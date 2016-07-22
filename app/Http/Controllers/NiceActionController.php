<?php

namespace App\Http\Controllers;

use App\NiceActionLog;
use \Illuminate\Http\Request;
use App\NiceAction;
use DB;

class NiceActionController extends Controller
{
    public function getHome(){
        $actions = NiceAction::all();

        $actions = NiceAction::orderBy('niceness', 'desc')->get();

        $logged_actions = NiceActionLog::all();

        /*
        $logged_actions = NiceActionLog::whereHas('nice_action', function($query){
            $query->where('name', '=', 'Kiss');
        })->get();
        */

        /*
        $query = DB::table('nice_action_logs')
                    ->join('nice_actions', 'nice_action_logs.nice_action_id', '=', 'nice_actions.id')
                    ->where('nice_actions.name', '=', 'Kiss')
                    ->get();

        */


        /*
        $query = DB::table('nice_action_logs')
            ->where('id', '>', 3)
            ->count();
        */

        $query = DB::table('nice_action_logs')
            ->where('id', '>', 3)
            ->max('id');


        return view('home', ['actions' => $actions, 'logged_actions' => $logged_actions, 'db' => $query]);
    }

    public function getNiceAction($action, $name = null){

        if($name === null){
            $name = 'you';
        }

        $nice_action = NiceAction::where('name', $action)->first();
        $nice_action_log = new NiceActionLog();
        $nice_action->logged_actions()->save($nice_action_log);

        return view( 'actions.nice', ['action' => $action, 'name' => $name]);
    }

    public function postInsertNiceAction(Request $request){
        $this->validate($request, [
            'name' => 'required|alpha|unique:nice_actions',
            'niceness' => 'required|numeric',
        ]);

        $action = new NiceAction();
        $action->name = $request['name'];
        $action->niceness = ucfirst(strtolower($request['niceness']));
        $action->save();

        return redirect()->route('home');
    }

    private function transformName($name){
        $prefix = 'KING ';
        return $prefix . strtoupper($name);
    }
}