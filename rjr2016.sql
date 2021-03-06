CREATE DATABASE IF NOT EXISTS `weiunion`;
use `weiunion`;
--
-- 数据库: `weiunion`
--

-- --------------------------------------------------------

--
-- 表的结构 `tbl_exercise`
--

DROP TABLE IF EXISTS `tbl_exercise`;

CREATE TABLE `tbl_exercise` (
  `id` int(11) NOT NULL,
  `question` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `sectionnum` int(11) NOT NULL,
  `rightanswer` int(11) NOT NULL,
  `answerA` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `answerB` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `answerC` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `answerD` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `tbl_exercise` (`id`, `question`, `sectionnum`, `rightanswer`, `answerA`, `answerB`, `answerC`, `answerD`) VALUES
(1,'无线软件日定在每年的9月9日，是为了纪念C语言和UNIX之父（）的诞辰。',4,4,'埃达·洛夫莱斯','尼克劳斯·维尔特','詹姆斯·高斯林','丹尼斯·里奇'),
(2,'以下不正确的C语言标识符是（）',4,4,'ABC','abc','a_bc','ab.c'),
(3,'C语言源程序的基本单位是（）',4,2,'过程','函数','子程序','标识符'),
(4,'以下选项不属于C语言的类型的是（）',4,4,'signed short int','unsigned long int','unsigned int','long short'),
(5,'在C语言中，反斜杠符是（）',4,3,'\\n','\\t','\\\\','\\v'),
(6,'在C语言中，以下运算法符中优先级最低的是（）',4,3,'&&','&','||','|'),
(7,'异常打印，日志记录等维测信息，应该尽量多输出，不需要考虑性能影响',2,2,'对','错','',''),
(8,'全局变量的访问，一般需要访问内存，效率较低，而局部变量在栈中分配，执行时一般就在CACHE内，效率较高',2,1,'对','错','',''),
(9,'使用SWITCH-CASE时，即使业务逻辑能保证每个场景都有对应的CASE覆盖，也需要添加DEFAULT分支。',2,1,'对','错','',''),
(10,'在软件生命周期中，如下那个阶段能够确认软件的体系结构：',4,1,'概要设计','详细设计','需求分析','可行性分析'),
(11,'软件生命周期是指：',4,4,'从开始使用到用户要求修改为止','从软件开始使用到被淘汰为止','从开始写代码到不再使用为止','从立项制定计划，进行需求分析，开始到需求不再使用为止'),
(12,'涉及到组件创建接口，必须在模块初始化的地方调用。',2,1,'对','错','',''),
(13,'组件使用，必须使用接口实现，禁止直接访问组件内部数据。',2,1,'对','错','',''),
(14,'为了防止栈溢出，应避免定义超大的全局变量。',2,2,'对','错','',''),
(15,'函数内部的局部变量，除了要初始化之外，还要注意应该初始化为“无效”值或“默认”值。',2,1,'对','错','',''),
(16,'内存操作，必须进行长度保护。',2,1,'对','错','',''),
(17,'不论是除法还是求余，都需要在操作前进行除零的判断和保护。',2,1,'对','错','',''),
(18,'Git的哪条命令可以将远端库的信息拉取到本地库？',4,3,'git branch','git checkout','git fetch','git merge'),
(19,'在本地做git操作，如果这时网络中断了，还能提交(commit)代码吗？',2,1,'能','不能','',''),
(20,'如果把项目中文件hello.c的内容破坏了，如何使其还原至原始版本？',4,2,'git reset -- hello.c','git checkout HEAD -- hello.c','git revert hello.c','git update hello.c'),
(21,'在CodeClub上将一个分支合并到另一个分支时需要提交合并请求，请问这个合并请求在CodeClub上的术语是什么？',4,2,'Pull Request','Merge Request','git merge','Merge Branch'),
(22,'在CodeClub上，如果我看到别人的公开项目想要修改代码，但自己又不在项目成员列表里，哪种方法最合适？',3,2,'Clone代码到本地，修改后找项目管理员帮忙上库','先Fork项目到自己名下，然后修改，再提Merge Request','找项目成员借账号修改代码上库',''),
(23,'Stackoverflow.com是一个什么网站？',4,4,'看名字就知道是讨论堆栈使用的技术网站','栈溢出，钓鱼网站，内含病毒','程序员交友网站','程序员问答网站'),
(24,'被誉为软件设计圣经的书《设计模式》由四人合作完成，他们也因此被成为四人帮（Gang Of Four），请问这四人分别是：',4,4,'西施，貂蝉，昭君，玉环','江青、王洪文、张春桥、姚文元','John Lennon,Paul McCartney,George Harrison,Ringo Starr','Erich Gamma,Richard Helm,Ralph Johnson，John Vlissides'),
(25,'敏捷流派中极限编程(ExtremeProgramming)名称的由来：',4,3,'创立者Kent Beck喜欢极限运动','创立者喜欢极端乐队(Extreme)','如果一项实践是好的，那就把它做到极致','创立者极端自恋'),
(26,'敏捷流派Scrum中将项目成员分别比喻为“小猪”和“小鸡”，这是出自什么典故：',4,2,'有人爱吃猪肉，有人爱吃鸡肉','猪和鸡要开餐厅买火腿煎蛋，猪要提供自己的腿，鸡只需下蛋；寓意团队中有些人是全身心投入，有些则是部分参与','猪偷了鸡蛋，鸡疯狂报仇的故事','吃的比猪糟，起的比鸡早，寓意程序员的悲惨生活'),
(27,'互联网架构中的ELK全称是ElasticSearch、Logstash和Kibana',2,1,'对','错','',''),
(28,'开源项目openstack的版本号包括',4,4,'havana','icehouce','mitaka','以上都是'),
(29,'那些是分布式基础理论',4,4,'CAP','BASE','ACID','以上都是'),
(30,'哪些是IO复用机制',4,4,'select','epoll','kqueue','以上都是'),
(31,'Reactor和Proactor是高性能的IO设计模式',2,1,'对','错','',''),
(32,'下面哪种变量定义不当，可能导致堆栈溢出',4,4,'静态全局变量','动态全局变量','静态局部变量','动态局部变量'),
(33,'如果某系统15*4=112成立，则系统采用的是多少进制',4,1,'6','7','8','9'),
(34,'下列哪个数据结构，同时具有较高的查找和删除性能',4,4,'有序数组','有序链表','链表','AVL树'),
(35,'有时为了提高读写效率，我们进行读写操作后不应关闭文件以便下次再进行读写。因为打开关闭文件很耗时。',2,1,'对','错','',''),
(36,'Linux的任务调度，普通优先级的任务是基于优先级抢占方式调度的，实时任务是基于时间片调度的。',2,2,'对','错','',''),
(37,'全局变量最好不要定义在头文件中（.h）,以防止链接时出错。',2,1,'对','错','',''),
(38,'开源软件和代码，如果需要，可以直接拿到版本使用。',2,2,'对','错','',''),
(39,'因为局部变量在堆区，所以可以定义任意大小',2,2,'对','错','',''),
(40,'定时器回调处理里面，不能进行阻塞操作，原因是会导致其他定时器不准。',2,1,'对','错','',''),
(41,'在类的operator=中不需要检查给自己赋值的情况。',2,2,'对','错','',''),
(42,'Makefile是make程序解释执行的脚本，里面定义了怎样通过编译链接生成最终的可执行程序。比较简单的makefile包括目标，被依赖项，以及生成目标的命令。',2,1,'对','错','',''),
(43,'浮点数不能直接用==进行比较。',2,1,'对','错','',''),
(44,'程序栈空间和堆空间基本没有什么区别，空间大小也不受限制。',2,2,'对','错','',''),
(45,'下面哪个是推荐使用的对称密码算法：',4,2,'DES','AES','SHA','RSA'),
(46,'下列哪些手段不能防止SQL注入的发生：',4,2,'使用存储过程','使用参数化查询预编译固化查询逻辑','使用白名单校验对输入数据进行限制','对外部输入中的特殊字符进行转义'),
(47,'下面哪个算法是禁止使用的弱加密算法:',4,3,'3DES','RSA','SHA1','DSA'),
(48,'防止局部变量与全局变量同名。尽管局部变量和全局变量的作用域不同而不会发生语法错误，但容易使人误解。',2,1,'对','错','',''),
(49,'坚持在首次使用前初始化变量，初始化的地方离使用的地方越近越好。这样可以有效避免未初始化错误。',2,1,'对','错','',''),
(50,'避免直接暴露内部数据给外部模型使用，是防止模块间耦合最简单有效的方法。',2,1,'对','错','',''),
(51,'代码文件的取名无需区分大小写。',2,2,'对','错','',''),
(52,'日志注入的攻击方式与下列哪类攻击最相似：',4,3,'XSS','CSRF','CRLF Injection','DoS'),
(53,'一个表达式中有多个运算符，直接根据默认优先级确定运算顺序，不必增加括号。',2,2,'对','错','',''),
(54,'头文件可以互相包含，使用“#ifndef…”的形式保证不会重复引用。',2,2,'对','错','',''),
(55,'下列哪个Web服务器HTTP方法不应该禁用？',4,2,'PUT','GET','DELETE','COPY'),
(56,'下列哪个不是文件包含漏洞可能带来的危害？',4,4,'任意远程文件读取','执行图片木马','任意本地文件读取','会话劫持'),
(57,'下列哪个不是认证锁定策略的正确做法？',4,1,'添加Token','锁定用户','锁定IP','拒绝服务'),
(58,'下列哪个是强口令策略的正确做法？',4,3,'口令纯数字','口令长期有效','口令加密存储','口令纯字母'),
(59,'下列哪个是防止cookie被脚本读取的安全属性？',4,4,'domain','set-cookies','secure','Httponly'),
(60,'下列哪个是防跨站伪造请求的最佳手段？',4,1,'请求中添加Token机制','判断referer','输入校验','输出编码'),
(61,'下列哪个关键字最有可能出现任意下载漏洞的？',4,4,'username','password','user-anent','javacript:open()'),
(62,'下列哪个不是防范SQL注入常用的方法？',4,2,'净化用户输入','输出编码','参数化查询','调用存储过程'),
(63,'跨站脚本攻击分类不包括以下哪种？',4,1,'跨站伪造请求CSRF','反射型XSS','存储型XSS','DOM型XSS'),
(64,'下列哪个不是跨站脚本攻击的危害？',4,4,'会话劫持','钓鱼攻击','web蠕虫','获取webshell'),
(65,'条件变量wait前需要判断等待的资源是否已经就绪。',2,1,'对','错','',''),
(66,'代码中在所有不符合预期的判断处都可以使用断言。',2,2,'对','错','',''),
(67,'为了架构简单，可以将所有处理都放置到底层的消息或是定时回调通知中。',2,2,'对','错','',''),
(68,'指针释放后需要立即置为NULL，防止重复释放和释放后访问。',2,1,'对','错','',''),
(69,'某进程收socket消息时，因为该线程就只做收消息这一件事，可以使用不带超时参数的接口select fds。',2,2,'对','错','',''),
(70,'代码中可以使用localtime获取操作系统时间信息。',2,2,'对','错','',''),
(71,'C++11的condition_variable功能的wait_for在时间跳变时会导致超时不返回。',2,1,'对','错','',''),
(72,'模块间传递内存指针时，需要明确内存由谁释放，什么情况下释放。',2,1,'对','错','',''),
(73,'为了模块内部数据的互斥，可以在一个模块的接口的入口处都加锁保护。',2,2,'对','错','',''),
(74,'除了不稳定的模块依赖于稳定的模块外，更好的方式是两个模块共同依赖于接口。',2,1,'对','错','',''),
(75,'禁止头文件循环依赖。头文件循环依赖，指a.h包含b.h，b.h包含c.h，c.h包含a.h之类导致任何一个头文件修改，都导致所有包含了a.h/b.h/c.h的代码全部重新编译一遍。',2,1,'对','错','',''),
(76,'软件的核心是架构和算法、本质是数学。',2,1,'对','错','',''),
(77,'在服务化架构中，为提升性能，应尽量直接通过数据库接口访问别的服务的数据库。',2,1,'对','错','',''),
(78,'关于Go语言，下面说法错误的是：',4,2,'支持自动内存管理（垃圾回收）','支持基于类继承的面向对象编程','轻量级线程和消息通信简化并发编程,支持多核大规模并发','在云基础设施上使用广泛'),
(79,'以下哪个不是开源组成的三大要素？',4,4,'license','社区','商业模式','GitHub'),
(80,'C++17标准于2014年发布',2,2,'对','错','',''),
(81,'为了避免使用其他模块的全局变量，可将全局变量直接定义在头文件中',2,2,'对','错','',''),
(82,'代码是用来给机器执行的，所以程序员不用关心代码是否简洁',2,2,'对','错','',''),
(83,'无线编程大赛每个队队员有几名？',4,3,'1','2','3','4'),
(84,'2016年无线编程大赛决赛举办城市是哪个？',4,2,'成都','上海','西安','深圳'),
(85,'2016年无线软件日新增加的活动是哪个？',4,3,'积分活动','无线编程大赛','CoderTalk','疯狂摇一摇'),
(86,'用二分法查找一个长度为10的、排好序的线性表，查找不成功时，最多需要比较（）次。',4,3,'5','2','4','1'),
(87,'无线编程大赛决赛举办地放在上一年比赛冠军所属地',2,1,'对','错','',''),
(88,'被称为计算机之父的人是谁？',4,1,'图灵','丹尼斯·里奇','詹姆斯·高斯林','比尔·盖茨'),
(89,'一年一度的无线软件大赛的举办地在哪里？（）',4,4,'上海','上一届获奖队伍最多的研究所','上一届前三名所在研究所随即抽选','上一届冠军所在研究所'),
(90,'2015年无线编程大赛题目是哪个？',4,2,'警察抓小偷','炸弹人','德州扑克','蚂蚁大战'),
(91,'属于面向对象程序设计特征的是',4,4,'封装','继承','多态','以上都是'),
(92,'设计一个系统的任何组织所产生的设计和架构都等价于其组织间的沟通架构，这是哪个定律？',4,1,'康威定律','康威逆定律','摩尔定律','以上都不是'),
(93,'一种架构模式，将单一应用程序划分成一组小的服务，每个服务运行在其独立的进程中，服务与服务见采用轻量级的通信机制。这种架构模式是指微服务架构。',2,1,'对','错','',''),
(94,'在程序实现中，多重循环中把最忙（循环次数多）的循环放在最外层效率更高？',2,2,'对','错','',''),
(95,'在程序实现中，函数不准返回临时变量的地址？',2,1,'对','错','',''),
(96,'整型值0x12345678在采用LittleEndian内存（从左到右内存地址递增）中的排列布局是？',3,3,'12345678','34127856','78563412',''),
(97,'下面哪种变量定义不当，可能导致栈溢出？（）',3,3,'全局变量','静态局部变量','动态局部变量',''),
(98,'在语句switch(c)中的c的数据类型不可以是',4,2,'int','float','char','枚举'),
(99,'OS内核不包括的子系统是（）。',4,4,'进程管理系统','内存管理系统','I/O管理系统','硬件管理系统'),
(100,'以下SMP调度描述哪个正确的是（）',2,1,'SMP支持一个任务多个CPU/core的绑定调度','SMP不支持一个任务多个CPU/core的绑定调度','',''),
(101,'多任务OS进程/线程有三种基本状态，下面哪个正确（）',2,2,'精确态、模糊态和随机态','运行态、就绪态和等待态','',''),
(102,'《人月神话》这本书的作者是谁？',3,2,'Dennis M.Ritchie','Fred Brooks','Brian Kernighan',''),
(103,'函数参数个数越少越好。',2,1,'对','错','',''),
(104,'建议多使用全局变量以提高编码效率。',2,2,'对','错','',''),
(105,'为了改动简单，新增功能时就在原来的函数里不断增加分支判断。',2,2,'对','错','',''),
(106,'为了改动简单，新增功能时就把原来的代码拷贝一份然后稍微改改就可以了。',2,2,'对','错','',''),
(107,'优秀的代码可以自我解释，即优秀的代码完全不需要注释。',2,2,'对','错','',''),
(108,'错误的注释比没有注释更糟。',2,1,'对','错','',''),
(109,'修改代码时不需改注释。',2,2,'对','错','',''),
(110,'尽量避免名字中出现数字编号，除非逻辑上的确需要编号。',2,1,'对','错','',''),
(111,'重构/修改部分代码时，应保持和原有代码的命名风格一致。',2,1,'对','错','',''),
(112,'修改代码时，维护代码周边的所有注释，以保证注释与代码的一致性。不再有用的注释要删除。',2,1,'对','错','',''),
(113,'在C/C++语言中，后置加操作比前置加操作效率高。',2,2,'对','错','',''),
(114,'在C/C++语言中，volatile关键字是用于提高效率的。',2,2,'对','错','',''),
(115,'如下哪种工具能够统计软件圈复杂度？',2,1,'Source Monitor','Source Insight','',''),
(116,'可以将结构变量作为函数入参，以提高参数传递的效率及正确性。',2,2,'对','错','',''),
(117,'在数据结构定义时（四字节对齐），其中各元素的排列不影响结构体占用空间的大小',2,2,'对','错','',''),
(118,'全局变量可以定义在被多个.C文件包含着的头文件中',2,2,'对','错','',''),
(119,'Linux进程和线程的区别，以下描述较为准确的是（）',2,2,'线程和进程调度上是一致的，因此没有区别','一个进程内的线程共享进程内所有资源','',''),
(120,'对名为fido的文件用chmod 551 fido进行了修改，则它的许可权是（）。',4,4,'-rwxr-xr-x','-rwxr--r--','-r--r--r--','-r-xr-x—x'),
(121,'软件产品5个9的可用性意味着：不管任何情况下，产品一年不可用的时间最多5分钟。',2,2,'对','错','',''),
(122,'分布式系统著名的CAP理论中，CAP是指',4,4,'一致性','可用性','分区容错性','以上都是'),
(123,'常见的git分支管理策略有',4,4,'不稳定主干策略','稳定主干策略','敏捷开发策略','以上都是'),
(124,'面向对象设计中，优先使用对象组合，而不是类继承。',2,1,'正确','错误','',''),
(125,'如下语言不是并发编程语言的是：',4,4,'Go','Erlang','Scala','Javascript'),
(126,'如下不属于微服务架构特征的是：',4,4,'服务即产品','去中心统一化','智能终端哑管道','企业服务总线'),
(127,'如下不属于社区开发实践的是：',4,1,'结对编程','同行评审','Committer审核','众需众测'),
(128,'在中断中，不能同步获取信号量，但是可以释放信号量',2,1,'对','错','',''),
(129,'在一个多任务非抢占的系统中，当某个任务需要处理大量数据时，可以通过长时间占用CPU的方式来提高本任务的处理效率，而不用考虑其他任务是否能够得到及时调度',2,2,'对','错','',''),
(130,'所有的错误都会引起缺陷。',2,2,'对','错','',''),
(131,'所有的缺陷都会引起失效。',2,2,'对','错','',''),
(132,'测试是调试的一个部分',2,2,'对','错','',''),
(133,'黑盒测试相对于白盒测试而言，并不关心被测对象的内部实现，而是针对被测对象提供的外部功能与规格出发来设计测试用例进行测试。',2,1,'对','错','',''),
(134,'单元测试环境通常和开发环境一致，单元的质量是系统质量的基石。',2,1,'对','错','',''),
(135,'通常来说，缺陷发现越早修改成本越低，所以要在开发阶段发现所有缺陷。',2,2,'对','错','',''),
(136,'作为早期的测试活动，检视评审具有缺陷发现和修改成本更低的特点。',2,1,'对','错','',''),
(137,'好的测试应该协调各层测试策略，分层构筑安全网。',2,1,'对','错','',''),
(138,'在产品风险分析时，开发人员应在缺陷发生概率方面提供建议，如技术复杂度、人员经验、历史情况等',2,1,'对','错','',''),
(139,'一般情况下，代码的可阅读性高于性能，只有确定性能是瓶颈时，才应该主动优化。',2,1,'对','错','',''),
(140,'对于C语言来说，头文件的设计也体现了系统设计。不合理的头文件布局是编译时间过长的根因，不合理的头文件实际上不合理的设计。',2,1,'对','错','',''),
(141,'头文件中适合放置接口的声明，不适合放置实现。',2,1,'对','错','',''),
(142,'正确的依赖方向应该是：平台依赖于产品，标准库依赖于平台。例如，某产品线平台的代码中已经包含了产品的头文件，导致平台无法单独编译、发布和测试。',2,2,'对','错','','');

--
-- 表的结构 `tbl_wx_account`
--
DROP TABLE IF EXISTS `tbl_wx_account`;
CREATE TABLE `tbl_wx_account` (
  `id` int(11) NOT NULL,
  `user_openid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `appid` int(11) NOT NULL COMMENT '用户openid的来至appid',
  `user_unionid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `wx_nickname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sex` int(1) NOT NULL,
  `province` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `headimgurl` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `privilege` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `last_visit_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `precision` float NOT NULL,
  `location_time` datetime NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '0' COMMENT '账户历史总额',
  `current_amount` int(11) NOT NULL COMMENT '账户当前余额',
  `cellphone` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户手机',
  `cellphone_chk` tinyint(1) NOT NULL DEFAULT '0' COMMENT '手机是否验证通过',
  `reg_time` datetime NOT NULL COMMENT '用户首次登录时间',
  `alipay_username` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户支付宝账户名',
  `pay_password` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '提款密码',
  `cellphone_chk_time` datetime NOT NULL COMMENT '手机验证码',
  `cellphone_chk_code` int(10) NOT NULL COMMENT '用户手机号验证码',
  `score` int(11) NOT NULL DEFAULT '0',
  `answered` int(11) NOT NULL DEFAULT '0',
  `is_gift` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY (user_openid)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `tbl_user_score`;

CREATE TABLE `tbl_user_score` (
  `user_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `exercise_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `score` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for table `tbl_exercise`
--
ALTER TABLE `tbl_exercise`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_wx_account`
--
ALTER TABLE `tbl_wx_account`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `tbl_exercise`
--
ALTER TABLE `tbl_exercise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- 使用表AUTO_INCREMENT `tbl_wx_account`
--
ALTER TABLE `tbl_wx_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2066;
