<style>
body {
	width : 100%;
	height : 100%;
	padding : 0;
	margin : 0;
	font-size : 12px;
	background : #000;
	color: #fff;
	overflow : visible;
	background-image : url(/LINUX.png);
	background-size : 100% auto;
	background-repeat : no-repeat;
	background-attachment: fixed;
	background-position: center; 
}
hr {
	border-style : dashed;
}
</style>
<body id="bod">
<?php
$htt = trim($_SERVER['REQUEST_URI'], "/log/");
if($htt == "") $htt = "http";
class Log{

	private $system;
	
	public function __construct($access){
		
		$__b = exec("zcat ". $_SERVER["DOCUMENT_ROOT"] . "/../log/".$access."_*", $output, $return_var);
		$this->system = $output;
	}
	
	public function get(){
		$system = $this->system;
		return $system;
	}
}

function rep($t){
	$s = str_replace("] \"", "] :</b> \"", $t);
	return " &nbsp;&nbsp;<b>" . $s . "<hr/>";	
}
$log = new Log($htt);
foreach($log->get() as $get):?>
	<?php echo rep($get)?>
<?php endforeach; ?>

<script>
	var objDiv = document.getElementById("bod");
	objDiv.scrollTop = objDiv.scrollHeight;
</script>
