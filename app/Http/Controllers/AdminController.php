<?php

namespace App\Http\Controllers;

class AdminController extends Controller{
    public function getIndex(){
        //Fetch posts & messages
        return view('admin.index');
    }
}