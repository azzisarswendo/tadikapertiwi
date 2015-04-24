<style>
body {
	padding : 0;
	margin : 0;
}
</style>
<link href="/brosur/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="/brosur/css/bootstrap.theme.css" rel="stylesheet" type="text/css">
<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
<script href="/brosur/js/bootstrap.js"></script>
<nav class="navbar navbar-inverse navbar-fixed-top">
  	<div class="container-fluid">
    		<!-- Brand and toggle get grouped for better mobile display -->
    		<div class="navbar-header">
      			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        		<span class="sr-only">Toggle navigation</span>
        		<span class="icon-bar"></span>
        		<span class="icon-bar"></span>
        		<span class="icon-bar"></span>
      		</button>
      		<a class="navbar-brand" href="#">Tadika Pertiwi</a>
    	</div>

    	<!-- Collect the nav links, forms, and other content for toggling -->
    	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      		<ul class="nav navbar-nav">
			<li>
				<a href="#SMK">SMK</a>
			</li>
			<li>
                                <a href="#SMA">SMA</a>
                        </li>
			<li>
                                <a href="#SMP">SMP</a>
                        </li>
			<li>
				<a href="#hubungi">Hubungi Kami</a>
			</li>
      		</ul>
    	</div><!-- /.navbar-collapse -->
  	</div><!-- /.container-fluid -->
</nav>

<div class="container">
	<div class="jumbotron">
		<h1>BUKA PENDAFTARAN SISWA SISWI BARU TADIKA PERTIWI</h1>
	</div>
	<div class="row">
		<center>
			<div class="col-md-12 centered ">
				<img id="SMK"  class="img-responsive" src="/brosur/SMK_FRONT.jpg" >
				<img  class="img-responsive" src="/brosur/SMK_BACK.jpg" >
				<img id="SMA"  class="img-responsive" src="/brosur/SMA_FRONT.jpg" >
				<img  class="img-responsive" src="/brosur/SMA_BACK.jpg" >
				<img id="SMP"  class="img-responsive" src="/brosur/SMP_FRONT.jpg " >
				<img  class="img-responsive" src="/brosur/SMP_BACK.jpg" >
			</div>
			<div id="hubungi" class="jumbotron col-md-12">
				<h2>Hubungi Kami Di : </h2>
				<hr/>
				<form class="form-horizontal" role="form" method="post" action="http://tadikapertiwi.com/brosur.php">
			    		<div class="form-group">
        					<label for="nama" class="col-sm-2 control-label">Nama Lengkap</label>
        					<div class="col-sm-10">
            						<input type="text" class="form-control" id="nama" name="nama" placeholder="Nama Lengkap" value="<?php echo $nama;?>">
                                                        <?php echo $erNa;?>
        					</div>
    					</div>
					<div class="form-group">
                                                <label for="alamat" class="col-sm-2 control-label">Alamat</label>
                                                <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="alamat" name="alamat" placeholder="Alamat" value="<?php echo $alamat;?>">
                                                        <?php echo $erAl;?>
                                                </div>  
                                        </div>
					<div class="form-group">
                                                <label for="sekolah" class="col-sm-2 control-label">Asal Sekolah</label>
                                                <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="sekolah" name="sekolah" placeholder="Asal Sekolah" value="<?php echo $sekolah;?>">
                                                        <?php echo $erSe;?>
                                                </div>  
                                        </div>
    					<div class="form-group">
        					<label for="email" class="col-sm-2 control-label">Email</label>
        					<div class="col-sm-10">
            						<input type="email" class="form-control" id="email" name="email" placeholder="contoh@contoh.com" value="<?php echo $email;?>">
                                                        <?php echo $erEm;?>
        					</div>
    					</div>
    					<div class="form-group">
        					<label for="pesan" class="col-sm-2 control-label">Pesan / Pertenyaan (Kami Balas Via Email)</label>
        					<div class="col-sm-10">
                                                    <textarea placeholder="Pesan / Pertanyaan Anda" class="form-control" rows="10" id="pesan"  name="pesan"><?php echo $pesan;?></textarea>
        					</div>
    					</div>
    					<div class="form-group">
        					<div class="col-sm-10 col-sm-offset-2">
            						<input id="submit" name="send" type="submit" value="Kirim" class="btn btn-primary"/>
        					</div>
    					</div>
    					<div class="form-group">
        					<div class="col-sm-10 col-sm-offset-2">
                                                    <?php echo $er;?>
        					</div>
    				</div>
			</form>
			</div>
		</center>
	</div>
</div>
