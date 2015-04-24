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
class Application_Model_DbTable_Info extends Zend_Db_Table_Abstract{

    protected $_name = 'info_web';
    
    private $tabel ;
    
    public function __get($name) {
        $select = $this->select();
        $select->where("col = '$name'");
        $val =  $this->fetchRow($select);
        
        return $val->val;
    }
    
}
    