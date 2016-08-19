<?php
/**
* 等三方登陆插件配置
* @date: 2016年1月10日
* @author: Administrator
* @return:
*/
$SITE_URL = "http://waveweb123.com/";
define('URL_CALLBACK', "" . $SITE_URL . "Home/Common/callback?type=");
return array(    
    #腾讯QQ登录配置
    'THINK_SDK_QQ' => array(
        'APP_KEY' => '101332935', # APP ID
        'APP_SECRET' => 'a5d98009bacbf58f1da88655634572db', # KEY
        'CALLBACK' => URL_CALLBACK . 'qq',
    ),
    
);