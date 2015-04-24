<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of UserLevel
 *
 * @author azzis
 */
class Application_Model_DbTable_UserLevel extends Zend_Db_Table_Abstract {
    
    protected $_name = 'userlevel';
    
    public function tampilNama($id){
        $select = $this->select();
        $select->where("id = '$id'");
        return $this->fetchRow($select);
    }
}
