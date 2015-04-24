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
    
    public function deleteKelas($kelas){
        $this->delete("kelas = '$kelas'");
    }
    
    public function inputKelas($kelas, $senin, $selasa, $rabu, $kamis, $jumat, $sabtu){
        $data = array(
            "kelas" => $kelas,
            "senin" => $senin,
            "selasa" => $selasa,
            "rabu" => $rabu,
            "kamis" => $kamis,
            "jumat" => $jumat,
            "sabtu" => $sabtu
        );
        
        $this->insert($data);
    }
    
    public function updateJadwal($kelas, $senin1, $selasa, $rabu, $kamis, $jumat, $sabtu){
        $this->deleteKelas($kelas);
        $i = 0;
        foreach ($senin1 as $senin){
            $this->inputKelas($kelas, $senin, $selasa[$i], $rabu[$i], $kamis[$i], $jumat[$i], $sabtu[$i]);
            $i++;
        }
    }
    
}