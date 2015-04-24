<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Profil
 *
 * @author azzis
 */
class Application_Form_Profil extends Zend_Form {
    //put your code here
    public function init(){
        
	$id = new Zend_Form_Element_Hidden('id', array('disableLoadDefaultDecorators' => true));
        $id->addFilter('StripTags')
		->addDecorator('ViewHelper');
	$this->addElement($id);      
        
        $nama = new Zend_Form_Element_Text('nama', array('disableLoadDefaultDecorators' => true));
        $nama->setLabel('nama')
                ->addFilter('StripTags')
                ->addFilter('StringTrim')
		->setAttrib('class','form-control')
		->addDecorator('ViewHelper');
	$this->addElement($nama);
        
        $pengguna = new Zend_Form_Element_Text('pengguna', array('disableLoadDefaultDecorators' => true));
        $pengguna->setLabel('pengguna')
                ->addFilter('StripTags')
                ->addFilter('StringTrim')
		->setAttrib('class','form-control')
		->addDecorator('ViewHelper');
	$this->addElement($pengguna);
        
        $pass = new Zend_Form_Element_Password('pass', array('disableLoadDefaultDecorators' => true));
        $pass->setLabel('pass')
                ->addFilter('StripTags')
                ->addFilter('StringTrim')
		->setAttrib('class','form-control')
		->addDecorator('ViewHelper');
	$this->addElement($pass);
        
        $email = new Zend_Form_Element_Text('email', array('disableLoadDefaultDecorators' => true));
        $email->setLabel('email')
                ->addFilter('StripTags')
                ->addFilter('StringTrim')
		->setAttrib('class','form-control')
		->addDecorator('ViewHelper');
	$this->addElement($email);
        
        $bbm = new Zend_Form_Element_Text('bbm', array('disableLoadDefaultDecorators' => true));
        $bbm->setLabel('bbm')
                ->addFilter('StripTags')
                ->addFilter('StringTrim')
		->setAttrib('class','form-control')
		->addDecorator('ViewHelper');
	$this->addElement($bbm);
        
        $hp = new Zend_Form_Element_Text('hp', array('disableLoadDefaultDecorators' => true));
        $hp->setLabel('hp')
                ->addFilter('StripTags')
                ->addFilter('StringTrim')
		->setAttrib('class','form-control')
		->addDecorator('ViewHelper');
	$this->addElement($hp);
        
        $fb = new Zend_Form_Element_Text('fb', array('disableLoadDefaultDecorators' => true));
        $fb->setLabel('fb')
                ->addFilter('StripTags')
                ->addFilter('StringTrim')
		->setAttrib('class','form-control')
                ->setAttrib("placeholder", "http://facebook.com/<ID Facebook Anda>")
		->addDecorator('ViewHelper');
	$this->addElement($fb);
        
        $tw = new Zend_Form_Element_Text('tw', array('disableLoadDefaultDecorators' => true));
        $tw->setLabel('tw')
                ->addFilter('StripTags')
                ->addFilter('StringTrim')
		->setAttrib('class','form-control')
		->addDecorator('ViewHelper');
	$this->addElement($tw);
        
        $update = new Zend_Form_Element_Submit('update', array('disableLoadDefaultDecorators' => true));
        $update->setLabel('Perbarui')
                ->addFilter('StripTags')
		->setAttrib('class','btn btn-danger')
                ->addFilter('StringTrim')
		->addDecorator('ViewHelper');
        $this->addElement($update);
        
    }
}
