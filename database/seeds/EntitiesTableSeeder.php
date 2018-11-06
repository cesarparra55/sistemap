<?php

use Illuminate\Database\Seeder;

class EntitiesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('entities')->insert([
            'description'  => 'Organos desconcentrados (Desconcentracion)',
            'name'         => 'OCSPE',
            'rif'          => 'J-5765756'
     ]);

    DB::table('entities')->insert([
            'description'  => 'Organos desconcentrados (Desconcentracion)',
            'name'         => 'UCOCAR',
            'rif'          => 'J-4565464'  
    ]);

    DB::table('entities')->insert([
            'description'  => 'Organos desconcentrados (Desconcentracion)',
            'name'         => 'OCAMAR',
            'rif'          => 'J-56334534'  
    ]);

    DB::table('entities')->insert([
            'description'  => 'Organos desconcentrados (Desconcentracion)',
            'name'         => 'OCHINA',
            'rif'          => 'J-5605665'  
    ]);

    DB::table('entities')->insert([
            'description'  => 'Organos desconcentrados (Desconcentracion)',
            'name'         => 'SAMALGUARN',
            'rif'          => 'J-13350756'  
    ]);

       DB::table('entities')->insert([
            'description'  => 'Organos desconcentrados (Desconcentracion)',
            'name'         => 'SAFAV',
            'rif'          => 'J-5654023'   
    ]);

    DB::table('entities')->insert([
            'description'  => 'Organos desconcentrados (Desconcentracion)',
            'name'         => 'SEDEFANB',
            'rif'          => 'J-4650464'    
    ]);

    DB::table('entities')->insert([
            'description'  => 'Organos desconcentrados (Desconcentracion)',
            'name'         => 'SASFANB',
            'rif'          => 'J-5470233'     
    ]);

    DB::table('entities')->insert([
            'description'  => 'Institutos Publicos o Autonomos (Descentralizacion funcional)',
            'name'         => 'IPSFA',
            'rif'          => 'J-9766045'   
    ]);

    DB::table('entities')->insert([
            'description'  => 'Institutos Publicos o Autonomos (Descentralizacion funcional)',
            'name'         => 'IACFA',
            'rif'          => 'J-21423056'   
    ]);

    DB::table('entities')->insert([
            'description'  => 'Institutos Publicos o Autonomos (Descentralizacion funcional)',
            'name'         => 'IORFAN',
            'rif'          => 'J-4367843'  
    ]);

    DB::table('entities')->insert([
            'description'  => 'Institutos Publicos o Autonomos (Descentralizacion funcional)',
            'name'         => 'UNEFA',
            'rif'          => 'J-2323456'
    ]);

    DB::table('entities')->insert([
            'description'  => 'Institutos Publicos o Autonomos (Descentralizacion funcional)',
            'name'         => 'UMBV',
            'rif'          => 'J-2346346'    
    ]);
    
    DB::table('entities')->insert([
            'description'  => 'Empresas del Estado',
            'name'         => 'SEGUROS HORIZONTE',
            'rif'          => 'J-74564560'  
    ]);
    
    DB::table('entities')->insert([
            'description'  => 'Empresas del Estado',
            'name'         => 'FINANCIADORA DE PRIMAS HORIZONTE',
            'rif'          => 'J-1323065'     
    ]);
    DB::table('entities')->insert([
            'description'  => 'Empresas del Estado',
            'name'         => 'IFAMIL',
            'rif'          => 'J-2343440'
    ]);
    
    DB::table('entities')->insert([
            'description'  => 'Empresas del Estado',
            'name'         => 'CAVIM',
            'rif'          => 'J-213240'   
    ]);

    DB::table('entities')->insert([
            'description'  => 'Empresas del Estado',
            'name'         => 'INVERSORA IPSFA',
            'rif'          => 'J-45667563'    
    ]);
    
    DB::table('entities')->insert([
            'description'  => 'Empresas del Estado',
            'name'         => 'CONSTRUCTORA IPSFA',
            'rif'          => 'J-7689790' 
    ]);
    
    DB::table('entities')->insert([
            'description'  => 'Empresas del Estado', 
            'name'         => 'EMILTRA',
            'rif'          => 'J-123214320' 
    ]);
    
    DB::table('entities')->insert([
            'description'  => 'Empresas del Estado',
            'name'         => 'AGROFANB',
            'rif'          => 'J-8765680'
    ]);

    DB::table('entities')->insert([
            'description'  => 'Empresas del Estado',   
            'name'         => 'TVFANB',
            'rif'          => 'J-12334890'  
    ]);
    
    DB::table('entities')->insert([
            'description'  => 'Empresas del Estado',
            'name'         => 'EMCOFANB',
            'rif'          => 'J-12346789'    
    ]);

    DB::table('entities')->insert([
            'description'  => 'Empresas del Estado',
            'name'         => 'EMSOVEN',
            'rif'          => 'J-8974565'     
    ]);

    DB::table('entities')->insert([
            'description'  => 'Empresas del Estado',
            'name'         => 'FONDO DE INVERSION MISION NEGRO PRIMERO',
            'rif'          => 'J-76856760'  
    ]);

    DB::table('entities')->insert([
            'description'  => 'Empresas del Estado',
            'name'         => 'CANCORFANB',
            'rif'          => 'J-356450'  
    ]);

    DB::table('entities')->insert([
            'description'  => 'Empresas del Estado',
            'name'         => 'COMPLEJO INDUSTRIAL TIUNA I',
            'rif'          => 'J-97890780'
    ]);

    DB::table('entities')->insert([
            'description'  => 'Empresas del Estado',     
            'name'         => 'COMPLEJO INDUSTRIAL TIUNA II',
            'rif'          => 'J-1321230'    
    ]);

    DB::table('entities')->insert([
            'description'  => 'Empresas del Estado',
            'name'         => 'CAMIMPEG',
            'rif'          => 'J-5674660'    
    ]);

    DB::table('entities')->insert([
            'description'  => 'Empresas del Estado',
            'name'         => 'IMPREFANB',
            'rif'          => 'J-3454360'   
    ]);

    DB::table('entities')->insert([
            'description'  => 'Empresas del Estado',
            'name'         => 'NEUMALBA, C.A.',
            'rif'          => 'J-2547640'  
    ]);

    DB::table('entities')->insert([
            'description'  => 'Fundaciones del Estado',  
            'name'         => 'FUNDASMIN',
            'rif'          => 'J-7653450'           
    ]);

    DB::table('entities')->insert([
            'description'  => 'Fundaciones del Estado',
            'name'         => 'FUNDACION MURONTO',
            'rif'          => 'J-25676860'   
    ]);

    DB::table('entities')->insert([
            'description'  => 'Fundaciones del Estado',
            'name'         => 'FUNDACARDIN',
            'rif'          =>'J-685345430'     
    ]);

    DB::table('entities')->insert([
            'description'  => 'Fundaciones del Estado',
            'name'         => 'FUNDACION VICENTE SALIAS',
            'rif'          => 'J-34657834'    
    ]);

    DB::table('entities')->insert([
            'description'  => 'Fundaciones del Estado',
            'name'         => 'FUNDACION MUSEO AERONAUTICO',
            'rif'          => 'J-6768763'     
    ]);

    DB::table('entities')->insert([
            'description'  => 'Asociaciones y Sociedades Civiles del Estado',    
            'name'         => 'FONDOEFA',
            'rif'          => 'J-7754645'    
    ]);
    }
}
