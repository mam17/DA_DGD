<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Http;


class OtpController extends Controller
{
    public function getotp()
    {
        return view('front.layouts.otp');
    }
    public function postotp(Request $request)
    {
        $this ->validate($request,[
            'verify_code'=>'required'
        ],
        [
            'verify_code.required'=>'Bạn chưa nhập mã OTP',
        ]);
        if(Auth::user()->verify_code == $request->verify_code) {
            $user=Auth::user();
            $user->status=1;
            $user->save();
            
                return redirect(route('index'));
            } else {
                return redirect()->back()->with('thongbao','Nhập sai mã otp');

            }
    }
    public function resend()
    {
        $user=Auth::user();
        $user->verify_code=random_int(100000,999999);
        $user->save();
        
        $APIKey="F960C42BE7473E22ED6F070155E79C";
        $SecretKey="8E2088E960CE19FA8DB712F400C56A";
        $YourPhone = $user->phonenumber;
	    $Code = $user->verify_code;
	    $Speed = -1;
	    $Voice = "hatieumai";
        $url = "http://voiceapi.esms.vn/MainService.svc/json/VoiceOTP?Phone=$YourPhone&ApiKey=$APIKey&SecretKey=$SecretKey&Code=$Code&Speed=$Speed&Voice=$Voice";
        $data = Http::get($url);
        Auth::login($user);
        return view('front.layouts.otp');
        $curl = curl_init($data); 
        curl_setopt($curl, CURLOPT_FAILONERROR, true); 
        curl_setopt($curl, CURLOPT_FOLLOWLOCATION, true); 
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true); 
        $result = curl_exec($curl); 
            
        $obj = json_decode($data,true);
        if($obj['CodeResult'] == 100)
        {
            print "<br>";
            print "CodeResult:".$obj['CodeResult'];
            print "<br>";
            print "SMSID:".$obj['SMSID'];
            print "<br>";
        }
        else
        {
            print "ErrorMessage:".$obj['ErrorMessage'];
        }
        return true;
    }
}
