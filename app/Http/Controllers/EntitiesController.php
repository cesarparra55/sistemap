<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Entity;
use App\User;
use App\Role;
Use DB;
use Auth;

class EntitiesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        if (Auth::user()->role_id == '1') {

            $roles = new Role();
            $entities = Entity::paginate(10);
    
            return view('entities.index', compact('entities', 'roles'));
        }else{
            $entities=DB::table('entities')
                ->join('entityusers', 'entities.id', '=', 'entityusers.entity_id')
                ->join('users', 'entityusers.user_id', '=', 'users.id')
                ->select('entities.*', 'users.name as nombreusuario', 'users.id as idusuario')
                ->where('users.id', '=', Auth::user()->id)
                ->paginate(15);
    
            return view('entities.index', compact('entities', 'roles'));
        }

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('entities.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $entity = Entity::create($request->all());

        return redirect()->route('entities.edit', $entity->id)
            ->with('info', 'Ente guardado con éxito');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $entity = Entity::find($id);

        return view('entities.show', compact('entity'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $entity = Entity::find($id);

        return view('entities.edit', compact('entity'));
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
        $entity = Entity::find($id);
        $entity->update($request->all());

        return redirect()->route('entities.edit', $entity->id)
            ->with('info', 'Ente Modificado con éxito');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    // public function eliminar()
    // {
    //     $entity = new Entity();

    //      return view('entities.eliminar', compact('entity'));
    // }

    public function destroy($id)
    {
        $entity = Entity::find($id)->delete();

        return back()->with('info', 'Eliminado correctamente');
    }
}
