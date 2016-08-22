<?php
namespace Admin\Controller;
use Think\Controller;
/**
* 登陆
* @date: 2016年1月10日
* @author: Administrator
* @return:
*/
class LoginController extends Controller{
	
	public function index(){
		$this->display();
	}
	
	public function in(){
		$info = D('User')->in(I('post.user'),I('post.password'));
		if($info)
			$this->ajaxReturn(array("error"=>0,"msg"=>session("uname")));
			//session('uname',$user['uname']);
		else
			$this->ajaxReturn(array("error"=>1,"msg"=>"用户名或者密码错误!"));
	}
}