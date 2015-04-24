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
class Application_Model_DbTable_ChatKonten extends Zend_Db_Table_Abstract {
    
    protected $_name = 'chat_konten';
    
    public function chack($chat_id){
        $select = $this->select();
        $select->where("chat_id = '$chat_id'");
        if($this->fetchAll($select)->count() == 0){
            return "0";
        }
        else {
            return $this->fetchAll($select)->toArray();
        }
    }
    
    public function chackOrang($chat_id, $idb){
        $select = $this->select();
        $select->where("chat_id = '$chat_id' and id_user = '$idb'");
        if($this->fetchAll($select)->count() == 0){
            return "0";
        }
        else {
            return $this->fetchAll($select)->toArray();
        }
    }
    
    public function addChat($kode, $chat_id, $id, $isi){
        $dataa = array(
            "chat_konten_id" => $kode,
            "chat_id" => $chat_id,
            "id_user" => $id,
            "isi_chat" => $isi,
            "status" => 1
        );
        
        $this->insert($dataa);
    }
    
    public function chackBaru($chat_id, $idb){
        $chack = $this->chackOrang($chat_id, $idb);
        if($chack == 0){
            return 0;
        }
        else {
            $cc = 0;
            foreach($chack as $c){
                $cc = $cc + $c['status'];
            }
            return $cc;
        }
    }
    
    public function readPesan($id_pesan){
        $data = array(
            "status" => "0"
        );
        
        $this->update($data, "chat_konten_id = '$id_pesan'");
    }
    
    public function ambilNotif($id){
        $ccc = new Application_Model_DbTable_Chat();
        $ss = $ccc->selectId($id);
        $select = $this->select();
        $i = 0;
        if($ss == 0){
            return 0;
        }
        else {
            foreach($ss as $s){
                $select->where("chat_id = '".$s['chat_id']."'");
                foreach($this->fetchAll($select)->toArray() as $cc){
                    $i = $i + $cc["status"];
                }
            }
            return $i;
        }
    }
}
