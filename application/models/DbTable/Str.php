<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Str
 *
 * @author azzis
 */
class Application_Model_DbTable_Str extends Zend_Db_Table_Abstract {
    
    protected $_name = 'str';
    
    public function showAllEmoji(){
        $select = $this->select();
        return $this->fetchAll($select)->toArray();
    }
    
    public function insertEmoji($str_a, $str_b){
        $data = array(
            "str_a" => $str_a,
            "str_b" => $str_b,
        );
        
        $this->insert($data);
    }
    
    public function updateEmoji($id, $str_a, $str_b){
        
        $data = array(
            "str_a" => $str_a,
            "str_b" => $str_b,
        );
        
        $this->update("id = '$id'",$data);
    }
    
    public function deleteEmoji($id){
        $this->delete("id = '$id'");
    }
}
