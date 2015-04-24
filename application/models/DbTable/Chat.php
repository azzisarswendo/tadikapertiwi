<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Chat
 *
 * @author azzis
 */
class Application_Model_DbTable_Chat extends Zend_Db_Table_Abstract {
    
    protected $_name = 'chat';
    
    public function chack($ida, $idb){
        $select = $this->select();
        $select->where("id_a = '$ida' and id_b = '$idb'");
        if($this->fetchAll($select)->count() == 0){
            return "0";
        }
        else {
            return $this->fetchRow($select)->chat_id;
        }
    }
    
    public function addUser($kode, $ida, $idb){
        $data = array(
            "chat_id" => $kode,
            "id_a" => $ida,
            "id_b" => $idb,
        );
        $this->insert($data);
        
        $kode = $this->chack($ida, $idb);
        $data1 = array(
            "chat_id" => $kode,
            "id_a" => $idb,
            "id_b" => $ida,
        );
        $this->insert($data1);
    }
    
    public function selectId($id){
        $select = $this->select();
        $select->where("id_a = '$id'");
        if($this->fetchAll($select)->count() == 0){
            return 0;
        }
        else {
            return $this->fetchAll($select)->toArray();
        }
    }
    
    
}
