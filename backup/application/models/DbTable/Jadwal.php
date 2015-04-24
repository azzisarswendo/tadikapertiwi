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
class Application_Model_DbTable_Jadwal extends Zend_Db_Table_Abstract{

    protected $_name = 'jadwal';
    
    public function tampilSetiapKelas($id_kelas){
        $select = $this->select();
        $select->where("kelas = '$id_kelas'")->order("id");
        
        return $this->fetchAll($select)->toArray();
    }
    
}