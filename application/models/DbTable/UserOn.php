<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of User_On
 *
 * @author azzis
 */
class Application_Model_DbTable_UserOn extends Zend_Db_Table_Abstract
{

    protected $_name = 'user_on';
    //put your code here
    
    public function online($id){
        $aktif = date('Y') . date('m') . date('d') . date('h') . date('i') . date('s');
        if($this->row($id) == 0){
            $this->insertAktif($id, $aktif);
        }
        else {
            $this->updateAktif($id, $aktif);
        }
        
    }
    
    public function row($id){
        $select = $this->select();
        $select->where("id_unik = '$id'");
        
        $row = $this->fetchAll($select)->count();
        return $row;
    }
    
    public function rowSelect($id){
        $select = $this->select();
        $select->where("id_unik = '$id'");
        
        return $this->fetchRow($select);
    }
    
    public function insertAktif($id, $aktif){
        $data = array(
            "id_unik" => $id,
            "aktif" => $aktif
        );
        
        $this->insert($data);
    }
    
    public function updateAktif($id, $aktif){
        $data = array(
            "aktif" => $aktif
        );
        
        $this->update($data, "id_unik = '$id'");
    }
    
    public function cek($id){
        $c = "off";
        if($this->row($id) == 0){
            $c = "off";
        }
        else {
            $aktif = date('Y') . date('m') . date('d') . date('h') . date('i') . date('s');
            $select = $this->rowSelect($id)->aktif;
            if($select < ($aktif - 10)){
                $c = "off";
            }
            else {
                $c = "on";
            }
        }
        
        return $c;
    }
}
