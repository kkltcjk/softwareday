# CodeIgniter 2
Open Source PHP Framework (originally from EllisLab)

For more info, please refer to the user-guide at http://www.codeigniter.com/userguide2/  
(also available within the download package for offline use)

**WARNING:** *CodeIgniter 2.x is no longer under development and only receives security patches until October 31st, 2015.
Please update your installation to the latest CodeIgniter 3.x version available
(upgrade instructions [here](http://www.codeigniter.com/userguide3/installation/upgrade_300.html)).*

###############################################################################################################################
1.本工程采用CodeIgniter 2.2版本为框架，搭建微信摇一摇答题的后台。
2.目录结构及说明：
  1）${PATH}/application/controllers/wxoauth.php：
     该文件主要负责处理微信用户网页授权接入的处理，具体可以参考https://mp.weixin.qq.com/wiki/17/c0f37d5704f0b64713d5d2c37b468d75.html。
  2）${PATH}/application/controllers/onlinetest.php:
     该文件主要负责处理在线答题题目的主要控制逻辑。
  3）${PATH}/application/models/m_onlinetest.php:
     该文件主要负责与Mysql数据库的通信，如向数据库注册新用户，从数据库中选取题目、获得礼物情况等等。
  4）${PATH}/application/models/m_account.php:
     该文件主要负责与Mysql数据库的通信，如从数据库中查询用户信息、用户答题信息。
  5）${PATH}/application/views/onlinetest/v_onlinetest.php:
     该文件主要负责生成答题界面，并判断答题结果。
  6）${PATH}/application/views/onlinetest/v_result.php:
     该文件主要负责生成结果查询界面，并统计答题结果。
3.微信摇一摇整体框架
  手机（开启蓝牙、GPS） --->  ibeacon硬件  --->  微信后台（公众号）  --->  摇一摇答题后台
   /|\																			  |
	|																			  |
	-------------------------------------------------------------------------------
4.关于微信公众号：
  1）本次活动使用的微信公众号是“HW无线软件日”
  2）公众号需要开通摇一摇周边功能（已开通）
  3）公众号需要绑定摇一摇答题后台的URL，而且一般来说必须是一个域名且该域名必须是CPI备案过，本次用的是rjr.tuiunion.com，由毛杨提供。
  