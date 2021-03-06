<?php

class Application_Form_Editmateri extends Zend_Form
{

    public function init()
    {
        /* Form Elements & Other Definitions Here ... */
        $mapel = new Zend_Form_Element_Select('mapel', array('disableLoadDefaultDecorators' => true));
        $mapel->setLabel('mapel')
                ->addFilter('StripTags')
		->setAttrib('id','mapel')
                ->addFilter('StringTrim')
                //->addMultiOption('1','Semester 1')
                //->addMultiOption('2','Semester 2')
		->addDecorator('ViewHelper');
        $this->addElement($mapel);
        
	$id = new Zend_Form_Element_Hidden('id', array('disableLoadDefaultDecorators' => true));
        $id->addFilter('StripTags')
		->addDecorator('ViewHelper');
	$this->addElement($id);        
        
        $tanggal = new Zend_Form_Element_Select('tanggal', array('disableLoadDefaultDecorators' => true));
        $tanggal->setLabel('tanggal')
                ->addFilter('StripTags')
		->setAttrib('id','tgl')
                ->addFilter('StringTrim')
		->addDecorator('ViewHelper');
        $this->addElement($tanggal);
        
        $bulan = new Zend_Form_Element_Select('bulan', array('disableLoadDefaultDecorators' => true));
        $bulan->setLabel('bulan')
                ->addFilter('StripTags')
		->setAttrib('id','bln')
                ->addFilter('StringTrim')
		->addDecorator('ViewHelper');
        $this->addElement($bulan);
        
        $tahun = new Zend_Form_Element_Select('tahun', array('disableLoadDefaultDecorators' => true));
        $tahun->setLabel('tahun')
                ->addFilter('StripTags')
		->setAttrib('id','thn')
                ->addFilter('StringTrim')
		->addDecorator('ViewHelper');
        $this->addElement($tahun);
        
        $judul = new Zend_Form_Element_Text('judul', array('disableLoadDefaultDecorators' => true));
        $judul->setLabel('judul')
                ->addFilter('StripTags')
                ->addFilter('StringTrim')
		->setAttrib('id','judul')
		->addDecorator('ViewHelper');
	$this->addElement($judul);
        
        $isi = new Zend_Form_Element_Textarea('isi', array('disableLoadDefaultDecorators' => true));
        $isi->setLabel('isi')
                ->addFilter('StringTrim')
		->setAttrib('class','ckeditor')
		->setAttrib('id','tx')
		->setAttrib('rows','10')
		->addDecorator('ViewHelper');
	$this->addElement($isi);
        
        $simpan = new Zend_Form_Element_Submit('simpan', array('disableLoadDefaultDecorators' => true));
        $simpan->setLabel('Perbarui')
                ->addFilter('StripTags')
		->setAttrib('id','simpan')
                ->addFilter('StringTrim')
		->addDecorator('ViewHelper');
        $this->addElement($simpan);
        
        $hapus = new Zend_Form_Element_Submit('hapus', array('disableLoadDefaultDecorators' => true));
        $hapus->setLabel('Hapus')
                ->addFilter('StripTags')
		->setAttrib('id','hapus')
		->setAttrib('class','hapus')
                ->addFilter('StringTrim')
		->addDecorator('ViewHelper');
        $this->addElement($hapus);
        
    }


}

