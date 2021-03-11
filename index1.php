<?php
/*
سورس ربات پسورد ساز 
@MONSTER_SECURITY
*/
error_reporting(0);
unlink(error_log);
$API_KEY = "1606544543:AAFIazqD4yuIAs2onDqHFxKzwz9SBrewroI";//توکن خود را اینجا وارد کنید
define('API_KEY',$API_KEY);
function bot($method,$datas=[]){
    $url = "https://api.telegram.org/bot".API_KEY."/".$method;
    $ch = curl_init();
    curl_setopt($ch,CURLOPT_URL,$url);
    curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);
    curl_setopt($ch,CURLOPT_POSTFIELDS,$datas);
    $res = curl_exec($ch);
    if(curl_error($ch)){
        var_dump(curl_error($ch));
    }else{
        return json_decode($res);
    }
}
//-------------------- @MONSTER_SECURITY ----------------------
 function sendmessage($chat_id, $text, $model){
	bot('sendMessage',[
	'chat_id'=>$chat_id,
	'text'=>$text,
	'parse_mode'=>$mode
	]);
	}
	function sendaction($chat_id, $action){
	bot('sendchataction',[
	'chat_id'=>$chat_id,
	'action'=>$action
	]);
	}
	function Forward($KojaShe,$AzKoja,$KodomMSG)
{
    bot('ForwardMessage',[
        'chat_id'=>$KojaShe,
        'from_chat_id'=>$AzKoja,
        'message_id'=>$KodomMSG
    ]);
}
	function save($filename,$TXTdata){
	$myfile = fopen($filename, "w") or die("Unable to open file!");
	fwrite($myfile, "$TXTdata");
	fclose($myfile);
	}
	function objectToArrays($object)
    {
        if (!is_object($object) && !is_array($object)) {
            return $object;
        }
        if (is_object($object)) {
            $object = get_object_vars($object);
        }
        return array_map("objectToArrays", $object);
    }

function rand_string( $length ) {
$chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$%&*-+!/?^_=";
return substr(str_shuffle($chars),0,$length);
}
$outjson = json_encode($user,true);
$random = rand_string(7);
$user["step"] = "none";
$user["invite"] = "0";
$update = json_decode(file_get_contents('php://input'));
$message = $update->message;
$chat_id = $message->chat->id;
mkdir("data/$from_id");
$message_id = $message->message_id;
$channel = "MONSTER_SECURITY";//ایدی کانال را اینجا وارد کنید
$from_id = $message->from->id;
$first_name = $message->from->first_name;
$text = $update->message->text;
$Dunyial = file_get_contents("data/$from_id/com.txt");
$ADMIN = '1119653364';//ایدی عددی ادمین را اینجا وارد کنید
$user = file_get_contents("Member.txt");
$gr = "-100131965107";//ایدی عددی کانال را اینجا وارد کنید
$tc = $update->message->chat->type;
$truechannel = json_decode(file_get_contents("https://api.telegram.org/bot$API_KEY/getChatMember?chat_id=@$channel&user_id=".$from_id));
$first = $update->message->from->first_name;
$tch = $truechannel->result->status;
$tedad = file_get_contents('data/'.$from_id."/golds.txt");
@$list = file_get_contents("Member.txt");
@$wait = file_get_contents("data/$from_id/wait.txt");
@$coin = file_get_contents("data/$from_id/golds.txt");
//➻➻➻➻➻➻➻➻Sᴛᴀʀᴛ➻➻➻➻➻➻➻//
   if(preg_match('/^\/([Ss]tart)(.*)/',$text)){
if (!file_exists("data/$from_id/com.txt")) {
        mkdir("data/$from_id");
        file_put_contents("data/$from_id/com.txt","none");
        file_put_contents("data/$from_id/golds.txt","15");
        $myfile2 = fopen("Member.txt", "a") or die("Unable to open file!");
        fwrite($myfile2, "$from_id\n");
        fclose($myfile2);
		file_put_contents("data/$from_id/com.txt","none");
		file_put_contents("data/$from_id/golds.txt","15");
		}
	bot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"سلام 😉 به ربات پسورد رندوم خوش امدید☺️
برای استفاده ازکیبورد زیر استفاده کنید😁",
        'parse_mode'=>'MarkDown',
        'reply_to_message_id'=>$update->message->message_id,
        	'reply_markup'=>json_encode([
	'resize_keyboard'=>true,
	'keyboard'=>[
	[['text'=>"🔻پسورد بساز🔻"],['text'=>"🔻کانال ما🔻"]]
	]
	])
	]);
	file_put_contents("data/$from_id/com.txt","none");
	}
	elseif($tch != 'member' && $tch != 'creator' && $tch != 'administrator'){
	SendMessage($chat_id,"سلام دوست گلم😃
اول درکانال اسپانسرما جوین بده 
@$channel
سپس میتوانی ازربات استفاده کنید☺️","html","true",$button_remove);
	}
elseif($text == "🔻پسورد بساز🔻"){
	bot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"
	پسورد 8رقمی ایمنی بسیارقوی😉
	<code>$random</code>
   @$channel
   ",
'parse_mode'=>'HTML',
	]);
		}
		elseif($text == "🔻کانال ما🔻"){
	bot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"
طراحی شده توسط مانستر سکوریتی @MONSTER_SECURITY

   ",
'parse_mode'=>'HTML',
	]);
		}
/*
سورس ربات پسورد ساز 
@MONSTER_SECURITY
*/
//======= پنل========//
elseif($text == "/panel" && $chat_id == $ADMIN or $text == "🗳مدیریت🗃"){

file_put_contents("data/$from_id/com.txt","none");

        bot('sendmessage', [
                'chat_id' =>$chat_id,
                'text' =>"ادمین عزیز به پنل مدیریتی ربات خوش آمدید😊",
               'parse_mode'=>'MarkDown',
        	'reply_markup'=>json_encode([
	'resize_keyboard'=>true,
	'keyboard'=>[
	[['text'=>"آمار📊"],['text'=>"پیام همگانی📮"],['text'=>"فورواردهمگانی📬"]],
	]
	])
	]);
	}
elseif($text == "آمار📊" && $chat_id == $ADMIN){
    $user = file_get_contents("Member.txt");
    $member_id = explode("\n",$user);
    $member_count = count($member_id) -1;
    $mos = $member_count +0;
	sendmessage($chat_id , " آمار📊 کاربران : $mos", "html");
}
elseif($text == "پیام همگانی📮" && $chat_id == $ADMIN){
    file_put_contents("data/$from_id/com.txt","send");
	
	bot('sendmessage',[
    'chat_id'=>$chat_id,
    'text'=>" پیام مورد نظر رو در قالب متن بفرستید:",
    'parse_mode'=>'html',
    'reply_markup'=>json_encode([
      'keyboard'=>[
	  [['text'=>'🗳مدیریت🗃']],
      ],'resize_keyboard'=>true])
  ]);
}
elseif($Dunyial == "send" && $chat_id == $ADMIN){
    file_put_contents("data/$from_id/com.txt","no");
	
	bot('sendmessage',[
    'chat_id'=>$chat_id,
    'text'=>" باموفقیت فرستاده شد.",
  ]);
	$all_member = fopen( "Member.txt", "r");
		while( !feof( $all_member)) {
 			$user = fgets( $all_member);
			SendMessage($user,$text,"html");
		}
}
elseif($text == "فورواردهمگانی📬" && $chat_id == $ADMIN){
    file_put_contents("data/$from_id/com.txt","fwd");
	
	bot('sendmessage',[
    'chat_id'=>$chat_id,
    'text'=>"پیام خودتون را فروراد کنید:",
    'parse_mode'=>'html',
    'reply_markup'=>json_encode([
      'keyboard'=>[
	  [['text'=>'🗳مدیریت🗃']],
      ],'resize_keyboard'=>true])
  ]);
}
elseif($Dunyial == "fwd" && $chat_id == $ADMIN){
    file_put_contents("data/$from_id/com.txt","no");
$forp = fopen( "Member.txt", 'r'); 
while( !feof( $forp)) { 
$fakar = fgets( $forp); 
Forward($fakar, $chat_id,$message_id); 
  } 
   bot('sendMessage',[ 
   'chat_id'=>$chat_id, 
   'text'=>"با موفقیت فروارد شد.", 
   ]);
}
/*
سورس ربات پسورد ساز 
@MONSTER_SECURITY
*/
?>