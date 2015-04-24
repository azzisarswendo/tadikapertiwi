<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Kelas
 *
 * @author azzis
 */
class Application_Model_DbTable_Kelas extends Zend_Db_Table_Abstract{

    protected $_name = 'kelas';
    
    public function input($kelas){
        
        $kode = new Application_Model_Class_CodeRandom();
        
        $data = array(
            "kode" => $kode,
            "nama" => $kelas,
        );
        
        $this->insert($data);
    }
    
    public function tampilKelas(){
        $slect = $this->select();
        $slect->from(array($this->_name))->order('id');
        return $this->fetchAll($slect)->toArray();
    }
    
    public function tampilNama($id){
        $select = $this->select();
        $select->where("kode = '$id'");
        return $this->fetchRow($select);
    }
}
