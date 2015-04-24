<?php

class Application_Model_DbTable_Mapel extends Zend_Db_Table_Abstract
{

    protected $_name = 'mapel';
    
    public function tampilMapel()
    {
        $slect = $this->select();
        $slect->from(array($this->_name))->order('id');
        return $this->fetchAll($slect);
    }


}

