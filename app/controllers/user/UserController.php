<?php
/**
 * Created by PhpStorm.
 * User: vasilogeswaran
 * Date: 12/12/2014
 * Time: 15:48
 */

class UserController extends BaseController{

    /**
     * User Model
     * @var User
     */
    protected $user;

    protected $users;

    public function __construct()
    {
        parent::__construct();
        //$this->users  = User::all();
    }

    public function getIndex()
    {
        // Show the page
        return 'test';
        //return View::make('site/user/index')->with('users', $this->users);

    }

}