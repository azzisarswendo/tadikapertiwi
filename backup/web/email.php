<?php 

class Email {
	
	private $header,
		$subject,
		$message;

	public function __construct($subject, $email, $nama, $alamat, $sekolah, $pesan) {
		$this->subject = $subject;
		
		$headers = "From: $nama <$email>";
		echo $this->header = $headers;
		$message = "Nama\t: $nama\nE-Mail\t: $email\nAlamat\t: $alamat\nSekolah\t: $sekolah\nMessage\t: \n$pesan";
		echo $this->message = $message;
	}

	public function Send($to){
		if(mail($to, $this->subject, $this->message, $this->header)) return true;
		else return false;
	}

}
