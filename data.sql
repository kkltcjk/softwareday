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
(1,'在计算机网络中，能将异种网络互联起来，实现不同高层协议相互转换的网络互联设备是(　 )。',4,3,'交换机','路由器','网关','网桥'),
    (2,'在计算机网络中，所有的计算机均连接到一条公共的通信传输线路上，这种连接结构被称为（ ）。',4,1,'总线结构','环型结构','星型结构','网状结构'),
    (3,'在交换式以太网中，下列哪种描述是正确的（  ）。',4,4,'连接于两个端口的两台计算机同时发送，仍会发生冲突。','采用CSMA/CD方式','当交换机的端口数增多时，交换机的系统总吞吐率下降','交换式以太网消除信息传输的回路'),
    (4,'在结构化布线系统中的六个子系统中，（ ）是整个布线系统的主干线路。',4,1,'垂直布线系统','水平布线系统','设备间系统 ','布线配线系统'),
    (5,'在连续ARQ协议中，当滑动窗口序号位数为n，则发送窗口最大尺寸为(  )。',4,1,'2的n次方-1 ','2的n次方   ','2n-1 ','2n '),
    (6,'在企业内部网与外部网之间，用来检查网络请求分组是否合法，保护网络资源不被非法使用的技术是（   ）。',4,2,'防病毒技术','防火墙技术','差错控制技术','流量控制技术'),
    (7,'在数据传输过程中路由是在（ ） 实现的。',4,3,'运输层','物理层','网络层','应用层'),
    (8,'在数字通信中，传输介质的功能是（ ）。',4,1,'将信号从一端传到另一端','纠正传输过程中的错误','根据线路状况，自动调整信号形式','在源站与目的站间传送信息'),
    (9,'利用 DRS (Distributed Resource Scheduler)，用户可执行哪些任务？ ',4,4,'部署虚拟机','防止出现虚拟机故障','在计算资源需求较低时，将工作负载整合到较少的服务器上','利用 vMotion，跨 ESX/ESXi 主机集群动态平衡虚拟机负载'),
    (10,'以下哪个组件可向 ESX 主机发送虚拟机检测信号，以使其知晓客户操作系统正在运行？ ',4,2,'服务控制台','VMware Tools 服务','虚拟机监视器','VMware Tools 用户进程'),
    (11,'以下哪一项是硬件辅助技术的示例？ ',4,3,'卸载','VMDirectPath','虚拟机监视器','透明页共享'),
    (12,'关于 VMFS 文件系统的说法中，哪一项是正确的？ ',4,4,'使用较小的块大小。','不是集群文件系统。','支持动态设备映射。','透明页共享'),
    (13,'以下哪个组件负责在主机处理器中为每个虚拟机安排时间？ ',4,2,'VMware Tools','服务控制台','资源管理器','定期负载平衡器'),
    (14,'以下哪一项是 vCenter Server 的核心服务？ ',4,4,'vSMP','精简部署','性能数据收集','主机和虚拟机配置'),
    (15,'以下关于 vShield Zones 的说法中，哪一项是正确的？',4,1,'相当于虚拟防火墙，可将虚拟机逻辑划分为多个网络区域。','相当于虚拟防火墙，可将虚拟机物理划分为多个网络区域。','相当于虚拟防火墙，可将虚拟机逻辑划分为多个非保护区域。','相当于虚拟防火墙，可将虚拟机物理划分为多个非保护区域。'),
    (16,'以下关于 vNetwork 分布式交换机的说法中，哪一项是正确的？ ',4,3,'提供快速、简单且经济高效的备份。','不传输已迁移虚拟机的网络状态。','可跨数据中心内的多台 ESX 主机。','需要在单个 ESX 主机级别配置虚拟交换机网络。'),
    (17,'以下关于 Application vServices 的说法中，哪一项是正确的？ ',4,1,'借助可扩展性，ESX 主机可以支持 128 个核心和 512 GB 的物理 RAM。','借助可扩展性，ESX 主机可以支持 256 个核心和 1024 GB 的物理 RAM。','借助可用性，ESX 主机可以支持 128 个核心和 512 GB 的物理 RAM。','借助可用性，ESX 主机可以支持 256 个核心和 1024 GB 的物理 RAM。'),
    (18,'以下哪一项是 Infrastructure vServices 的优势？ ',4,3,'创建内部云以及构建内部基础架构联邦','在开启虚拟机时对虚拟机执行初始放置','无缝聚合内部服务器、存储和网络','保证为所有应用程序提供适当级别的可用性、安全性及可扩展性'),
    (19,'以下哪项扩展（也称为插件）可用于在 ESX 主机和虚拟机上强制执行安全标准？ ',4,3,'vSphere Client','VMware Guided consolidation','VMware vCenter Update manager','用于 vCenter Server 的 VMware vCenter Converter'),
    (20,'以下哪种界面可用于管理 ESXi 4.0 的命令行？ ',4,1,'vCLI','直接控制台','CIM 提供程序','服务控制台'),
    (21,'以下哪个组件负责向 ESX 主机发送虚拟机心跳信号，以使其知晓客户操作系统正在运行？ ',4,2,'虚拟机监视器','VMware Tools 服务','VMware Tools 用户进程','服务控制台'),
    (22,'管理员可使用 vSphere Client 执行以下哪种操作？ ',4,3,'仅连接到 ESX 主机','仅连接到 VirtualCenter Server','既可连接到 ESX 主机，又可连接到 VirtualCenter Server','以上不是客户端应用程序的名称'),
    (23,'ESX Agent 服务的名称是什么？ ',4,2,'Authd','Hostd','Esxd','Vpxa'),
    (24,'以下哪一种情况不适用于 DRS： ',4,4,'使用 VMotion 动态地平衡 ESX 主机群集内各个虚拟机的负载','出于管理目的，强制隔离虚拟机','在虚拟机开机时初始放置虚拟机','防止虚拟机出现故障'),
    (25,'以下哪一项不是 VirtualCenter Server 的一种核心服务？ ',4,3,'警报和事件管理','主机和虚拟机配置','虚拟 SMP','任务计划'),
    (26,'以下哪一项是分布式服务的示例? ',4,4,'任务调度','vCenter Linked mode','用户访问控制','VMware Distributed Resource Scheduler'),
    (27,'以下关于 vNetwork 分布式交换机环境的说法中，哪一项是正确的？ ',4,2,'控制 I/O 板位于 ESX 主机的虚拟交换机中。','数据 I/O 板位于 ESX 主机的虚拟交换机中。','数据 I/O 板不位于 ESX 主机的虚拟交换机中。','数据和控制 I/O 板都位于 ESX 主机的虚拟交换机中。'),
    (28,'VMware Fault Tolerance 的优势是什么？',4,1,'实现所有应用程序的零停机和零数据丢失。','提供快速、简单且经济高效的的备份。','通过份额和预留资源确保应用程序的可扩展性。','利用虚拟化管理程序的优势，提供虚拟机资源的清晰可见性'),
    (29,'VMFS 的哪个功能可确保多台 ESX/ESXi 主机不会同时启动同一虚拟机？ ',4,1,'磁盘锁定','I/O 扇区对齐','集群文件系统','裸磁盘映射'),
    (30,'vCenter Server 为以下哪一项提供了界面？',4,1,'Active Directory','Service Console','虚拟机监视器','VMware 补丁程序数据库'),
    (31,'云计算就是把计算资源都放到__上',4,2,'对等网','因特网','广域网','无线网'),
    (32,'我们常提到的"Window装个VMware装个Linux虚拟机"属于',4,3,'存储虚拟化','内存虚拟化','系统虚拟化','网络虚拟化'),
    (33,'简单的理解为云计算等于资源的闲置而产生的。',2,1,'正确','错误','',''),
    (34,'一个有10个硬盘组成的Raid5阵列最多可以允许（D）个硬盘出现故障不影响其数据的完整性。',4,4,'1个','2个','4个','5个'),
    (35,'相比各种网路存储的设置技术来讲，本地硬盘还是最快的',2,1,'正确','错误','',''),
    (36,'SaaS是（  ）的简称。',4,1,'软件即服务','平台即服务','基础设施即服务','硬件即服务'),
    (37,'微软于2008年10月推出云计算操作系统是',4,3,'GoogleAppEngine','蓝云','Azure','EC2'),
    (38,'虚拟化资源指一些可以实现一定操作具有一定功能，但其本身是（A ）的资源，如计算池，存储池和网络池、数据库资源等，通过软件技术来实现相关的虚拟化功能包括虚拟环境、虚拟系统、虚拟平台。',4,1,'虚拟','真实','物理','实体'),
    (39,'云计算是对（ ）技术的发展与运用',4,4,'并行计算','网格计算','分布式计算','三个选项都是'),
    (40,'虚拟交换机可以连多块物理网卡，所以同一块物理网卡可以连多个虚拟交换机。',2,2,'正确','错误','',''),
    (41,'（ ）在许多情况下，能够达到99.999%的可用性。',4,4,'虚拟化','分布式','并行计算','集群'),
    (42,'下列哪个特性不是虚拟化的主要特征',4,4,'高扩展性','高可用性','高安全性','实现技术简单'),
    (43,'与开源云计算系统HadoopHDFS相对应的商用云计算软件系统是（)',4,1,'GoogleGFS','GoogleMapReduce','GoogleBigtable','GoogleChubby'),
    (44,'IaaS是（）的简称。',4,3,'软件即服务','平台即服务','基础设施即服务','硬件即服务'),
    (45,'云计算可以把普通的服务器或者PC连接起来以获得超级计算机计算机的计算和存储等功能，但是成本更低。',2,1,'正确','错误','',''),
    (46,'Raid1是备份量极高的Raid策略，相应的他的保护能力也很强（',2,2,'正确','错误','',''),
    (47,'（）是公有云计算基础架构的基石',4,2,'虚拟化','分布式','并行','集中式'),
    (48,'Amazon.com公司通过（ ）计算云，可以让客户通过WEBService方式租用计算机来运行自己的应用程序。',4,3,'S3','HDFS','EC2','GFS'),
    (49,'Xen提出的虚拟化产品交付中心结构不包括下面那条生产线（）',4,4,'服务器虚拟化','应用虚拟化','桌面虚拟化','数据中心搭建支持'),
    (50,'与网络计算相比，不属于云计算特征的是（）',4,2,'资源高度共享','适合紧耦合科学计算','支持虚拟机','适用于商业领域'),
    (51,'IBM在2007年11月退出了“改进游戏规则”的（ ）计算平台，为客户带来即买即用的云计算平台。',4,1,'蓝云','蓝天','ARUZE','EC2'),
    (52,'虚拟化层对应（  ）结合Paas提供硬件服务，包括服务器集群及硬件检测等服务。',4,4,'软件即服务','平台即服务','基础设施即服务','硬件即服务'),
    (53,'亚马逊AWS提供的云计算服务类型是（）',4,4,'IaaS','PaaS','SaaS','三个选项都是'),
    (54,'PAAS是（  ）的简称。',4,2,'软件即服务','平台即服务','基础设施即服务','硬件即服务'),
    (55,'将基础设施作为服务的云计算服务类型是',4,1,'IaaS','PaaS','SaaS','三个选项都是'),
    (56,'将平台作为服务的云计算服务类型是（ ）',4,2,'IaaS','PaaS','SaaS','三个选项都是'),
    (57,'云计算体系结构的（）负责资源管理、任务管理用户管理和安全管理等工作',4,3,'物理资源层','资源池层','管理中间件层','SOA构建层'),
    (58,'网格计算是利用（ ）技术，把分散在不同地理位置的计算机组成一台虚拟超级计算机。',4,2,'对等网','因特网','广域网','无线网'),
    (59,'云计算里面面临的一个很大的问题，就是（ ）。',4,4,'服务器','存储','计算','节能'),
    (60,'（ ）有校验数据，提供数据容错能力',4,1,'RAID5','RAID2','RAID1','RAID0'),
    (61,'（ ）是指在云计算基础设施上位用户提供应用软件部署和运行环境的服务。',4,2,'SAAS','PAAS','IAAS','HAAS'),
    (62,'虚拟机最早在（）由IBM研究中心研制。',4,3,'20世纪50年代','20世纪60年代','20世纪70年代','20世纪80年代'),
    (63,'与SaaS不同的，这种“云”计算形式把开发环境或者运行平台也作为一种服务给用户提供。(B)',4,2,'软件即服务','基于平台服务','基于WEB服务','基于管理服务'),
    (64,'从研究现状上看，下面不属于云计算特点的是（）',4,3,'超大规模','虚拟化','私有化','高可靠性'),
    (65,'Raid0阵列的磁盘使用的冗余（用于备份的数据）比例是多少(D)',4,4,'0.5','0.25','0.15','0.0'),
    (66,'下列不属于Google云计算平台技术架构的是',4,4,'并行数据处理MapReduce','分布式锁Chubby','结构化数据表BigTable','弹性云计算EC2'),
    (67,'（）提供管理和服务，能管理云用户，能对用户授权、认证、登录进行管理，并可以管理可用计算资源和服务，接收用户发送的请求，根据用户请求并转发到相应的相应程序，调度资源智能地部署资源和应用，动态地部署、配置和回收资源。',4,3,'云用户端','服务目录','管理系统和部署工具','监控端'),
    (68,'云计算真正实现了按需计算，从而有效地提高了对软硬件资源的利用效率。()',4,1,'正确','错误','',''),
    (69,'2008年，（）先后在无锡和北京建立了两个云计算中心',4,1,'IBM','Google','Amazon','微软'),
    (70,'与网络计算相比，不属于云计算特征的是（ ）',4,2,'资源高度共享','适合紧耦合科学计算','支持虚拟机','适用于商业领域'),
    (71,'（ ）监控和计量云系统资源的使用情况，以便做出迅速反应，完成节点同步配置、负载均衡配置和资源监控，确保资源能顺利分配给合适的用户。',4,4,'云用户端','服务目录','管理系统和部署工具','监控端'),
    (72,'（ A）提供云用户请求服务的交互界面，也是用户使用云的入口，用户通过Web浏览器可以注册、登录及定制服务、配置和管理用户。打开应用实例与本地操作桌面系统一样。',4,1,'云用户端','服务目录','管理系统和部署工具','监控端'),
    (73,'IaaS计算实现机制中，系统管理模块的核心功能是（）',4,1,'负载均衡','监视节点的运行状态','应用API','节点环境配置'),
    (74,'是私有云计算基础架构的基石。',4,1,'虚拟化','分布式','并行','集中式'),
    (75,'基于光纤交换机的（）是利用FibreChannelSwitch为主干，建成的交互存储网络系统。',4,2,'LAN','SAN','WAN','MAN');


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
