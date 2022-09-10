<?php

namespace App\Http\Controllers;

use App\Message;
use Illuminate\Http\Request;

class ChatsController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }

    public function index(){
        return view('chats');
    }

    public function fetchMessages(){
        $messages = Message::with(['user'])->get();
        if($messages){
            return response()->json([
                'status' => 'success',
                'data' => $messages
            ],200);
        }
    }
    public function sendMessages(Request $request){
        $sendMessg = Message::create([
            'user_id' =>   $request->user_id,
            'message' => $request->message
        ]);
        $message = Message::find($sendMessg->id)->load('user');

        if($sendMessg){
            return response()->json([
                'status' => 'success',
                'data' => $message
            ],200);
        }

    }
}
