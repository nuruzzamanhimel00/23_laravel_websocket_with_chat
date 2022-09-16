<?php

namespace App\Http\Controllers;

use App\Models\Message;
use Illuminate\Http\Request;
use App\Events\MessageSentEvent;

class MessageController extends Controller
{
    public function __construct(){
        return $this->middleware('auth');
    }

    public function fetchAllmessages(){
        $messages = Message::with('user')->get();
        if($messages){
            return response()->json([
                'status' => 'success',
                'data' => $messages
            ]);
        }
    }

    public function sendMessages(Request $request){
        // return $request->all();
        $messageCreate = Message::create([
            'user_id' => $request->user_id,
            'message' => $request->message
        ]);
        $message = Message::with('user')->find($messageCreate->id);

        broadcast( new MessageSentEvent($message) )->toOthers();

        if($message){
            return response()->json([
                'status' => 'success',
                'data' => $message
            ]);
        }
    }
}
