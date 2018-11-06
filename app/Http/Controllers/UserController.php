<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Caffeinated\Shinobi\Models\Role;
use App\User;
use App\Entity;
use App\Entityuser;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
Use DB;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $users=DB::table('users')
        // ->join('entities', 'users.entity_id', '=', 'entities.id')
        // ->select('users.*', 'entities.name as entity')
        // ->paginate(15);
        
        $users = User::paginate(15);

        return view('users.index', compact('users'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $users = User::all();
        $roles = Role::all();
        $entities = Entity::all();

        return view('users.create', compact('users', 'entities', 'roles'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $user= new \App\User();
        $ente = new \App\Entityuser();
        $user->name=$request->name;
        $user->email=$request->email;
        $user->role_id=$request->role_id;
        $user->password=bcrypt($request->password);

        if($user->save())
            $id = $user->id;
        {
            foreach ($ente = $request->get('entity_id') as $key => $v) {
                
                $data=array(
                    'user_id' => $id,
                    'entity_id' => $v);
                Entityuser::insert($data);
            }
        
        }
            
        if($user->save()){

         return redirect()->route('users.index')
             ->with('info', 'Usuario guardado con éxito');
        }
        else{
            return redirect()->route('users.index')
             ->with('info', 'No se guardó el usuario');
        }

    }

    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6|confirmed',
        ]);
    }

    public function show($id)
    {
        $user = User::find($id);

        return view('users.show', compact('user'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $user = User::find($id);
        $roles = Role::get();
        $entities = Entity::get();

        return view('users.edit', compact('user', 'roles', 'entities'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $user = User::find($id);
        $user->update($request->all());

        $user->roles()->sync($request->get('roles'));

        return redirect()->route('users.index', $user->id)
            ->with('info', 'Usuario Modificado con éxito');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user = User::find($id)->delete();

        return back()->with('info', 'Eliminado correctamente');
    }
}
