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

        $query = '';

        /*

        $query = DB::table('nice_action_logs')
            ->insertGetId([
                'nice_action_id' => DB::table('nice_actions')->select('id')->where('name', 'Hug')->first()->id
            ]);

        */

        /*

        $nice_action = NiceAction::where('name', 'Hug')->first();
        $nice_action_log = new NiceActionLog();
        $nice_action->logged_actions()->save($nice_action_log);

        */

        $hug = NiceAction::where('name', 'Hug')->first();

        if($hug){
            $hug->name = 'Smile';
            $hug->update;
        }

        $wave = NiceAction::where('name', 'Wave')->first();

        if($wave){
            $wave->name = 'Smile';
            $wave->delete();
        }



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