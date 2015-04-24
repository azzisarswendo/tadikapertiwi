<?php

class Application_Model_DbTable_Masuk extends Zend_Db_Table_Abstract
{

    protected $_name = 'userdata';
    
    public function masuk($pengguna, $katasandi)
    {
        $select = $this->select();
        $select->where("pengguna = '$pengguna' and katasandi1 = '$katasandi'");
        return $this->fetchRow($select);
    }
    
    public function daftar($id, $nama, $pengguna, $katasandi1, $katasandi2, $email, $bbm, $hp, $fb, $tw, $kelas, $foto)
    {
        $data = array(
            'id_unik' => $id,
            'nama' => $nama,
            'pengguna' => $pengguna,
            'katasandi1' => $katasandi1,
            'katasandi2' => $katasandi2,
            'email' => $email,
            'bbm' => $bbm,
            'hp' => $hp,
            'fb' => $fb,
            'tw' => $tw,
            'kelas' => $kelas,
            'level' => 4,
            'bidang' => 0,
            'foto' => $foto,
        );
        
        $this->insert($data);
    }
    public function ambil($id)
    {
        $slect = $this->select();
        $slect->where("id_unik = '$id'");
        return $this->fetchRow($slect);
    }
    
    public function editProfil($id, $nama, $pengguna, $email, $katasandi1, $katasandi2, $bbm, $hp, $fb, $tw)
    {
        $data = array(
            'nama' => $nama,
            'pengguna' => $pengguna,
            'email' => $email,
            'katasandi1' => $katasandi1,
            'katasandi2' => $katasandi2,
            'bbm' => $bbm,
            'hp' => $hp,
            'fb' => $fb,
            'tw' => $tw,
        );
        
        $this->update($data, "id_unik = '$id'");
    }

}

