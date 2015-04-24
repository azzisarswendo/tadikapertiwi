<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Users
 *
 * @author azzis
 */
class Application_Model_DbTable_UserData extends Zend_Db_Table_Abstract {
    
    protected $_name = 'userdata';
    
    public function tampilNama($id){
        $select = $this->select();
        $select->where("id_unik = '$id'");
        return $this->fetchRow($select);
    }
    
    public function all(){
        $select = $this->select();
        $select->order("nama");
        return $this->fetchAll($select)->toArray();
    }
}
