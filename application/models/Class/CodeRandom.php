<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of CodeRandom
 *
 * @author azzis
 */
class Application_Model_Class_CodeRandom{
    
    public function __toString(){
        $characters = "abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        $randstring = '';
        for ($i = 0; $i < 10; $i++) {
            $randstring =   $characters[rand(date('y'), strlen($characters))].
                            $characters[rand(date('m'), strlen($characters))].
                            $characters[rand(date('d'), strlen($characters))].
                            $characters[rand(date('h'), strlen($characters))].
                            $characters[rand(date('i'), strlen($characters))].
                            $characters[rand(date('s'), strlen($characters))];
        }
        return $randstring;
    }
    
    
    
    public function warna(){
        $characters = "0123456789ABCDEF";
        
        $randstring = '#';
        
        for($aa = 0; $aa < 6; $aa++){
            
            $ss = "";
            
            for ($i = 0; $i < 7; $i++) {
                $ss =  $characters[rand(0, strlen($characters))];
            }
            
            $randstring = $randstring . $ss;
            
        }
        
        if(strlen($randstring) != 7){
            $ii = 7 - strlen($randstring);
            for($aaa = 1; $aaa <= $ii; $aaa++){
                $randstring = $randstring . $characters[rand(0, strlen($characters))];
            }
        }
        
        return $randstring;
    }
}
