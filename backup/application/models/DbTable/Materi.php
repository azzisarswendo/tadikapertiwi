<?php

class Application_Model_DbTable_Materi extends Zend_Db_Table_Abstract
{

    protected $_name = 'materi';

    public function tambahMateri($id_user, $id_materi, $tanggal, $bulan, $tahun, $mapel, $judul, $isi)
    {
        $data = array(
            'user' => $id_user,
            'id_materi' => $id_materi,
            'mapel' => $mapel,
            'tanggal' => $tanggal,
            'bulan' => $bulan,
            'tahun' => $tahun,
            'judul' => $judul,
            'materi' => $isi,
        );
        
        $this->insert($data);
    }
    
    public function tampil()
    {
        $slect = $this->select();
        $slect->from(array($this->_name))->order('id desc');
        return $this->fetchAll($slect);
    }
    
    public function ambil($id)
    {
        $slect = $this->select();
        $slect->where("id_materi = '$id'");
        if($this->fetchAll($slect)->count() != 0)
        return $this->fetchRow($slect);
        else     {
            return FALSE;
        }
    }
    
    public function editmateri($id_materi, $tanggal, $bulan, $tahun, $mapel, $judul, $isi)
    {
        $data = array(
            'mapel' => $mapel,
            'tanggal' => $tanggal,
            'bulan' => $bulan,
            'tahun' => $tahun,
            'judul' => $judul,
            'materi' => $isi,
        );
        
        $this->update($data, "id_materi = '$id_materi'");
    }
    
    public function hapusmateri($id)
    {
        $this->delete("id_materi = '$id'");
    }
}

