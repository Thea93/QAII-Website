<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>青岛智能产业技术研究院</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!-- <link type="text/css" rel="stylesheet" href="Resources/css/style.css" /> -->
<link type="text/css" rel="stylesheet"	href="Resources/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="Resources/css/common.css">
<script type="text/javascript" src="Resources/js/jQuery-1.11.0.js"></script>
<script type="text/javascript" src="Resources/js/Jump.js"></script>
<script type="text/javascript" src="Resources/js/BackSpace.js"></script>

<script type=text/javascript>
	$(function() {
		sessionStorage.focusUrl_Name = "jbgk_fzlc.do";
		sessionStorage.focusUrl_ID = "jibengk";
		NavCPFA();
		parent.setiHeight($(".rightcontent").height() + 240);
	});
</script>

<style>
.divtitle {
			padding-top: 20px;
		    padding-bottom: 10px;
			line-height: 36px;
			font-family: '微软雅黑';
			font-size: 24px;
		    
			text-align: center;
			color: #000000;
			opacity: 0.8;
		}
	
		p{
		 line-height:29px;
		 margin-top: 33px;
		 text-indent: 2em;
		 font-family: "微软雅黑";
		 font-size: 16px;
		 color: #000000;
		 opacity: 0.8;
		}
		.img{
			width: 540px;
			margin: 32px auto 6px;
		}
		video{
			width: 540px;
			margin: 32px auto 6px;
		}
		.img_title{
			font-family: "微软雅黑";
			font-size: 10px;
			text-align: center;
			margin-top: 10px;
			color: #000000;
			opacity: 0.8;
			
		}

</style>

</head>

<body style="overflow:auto;overflow-x:hidden;margin:0 0">
	<div id="header" class="header">
		<div class="headertop">
			<div class="headerinner">
				<img src="Resources/img/ic_logo.png" height="40px"/>	
				<div class=language>
					<a class="lanActive" href="index.do">中文</a> | <a href="index_e.do">English</a>
				</div>			
			</div>
		</div>
		<div class="nav" id="nav">
			<ul class="nav-main" id="nav-main">
				<li id="home" class="home"><a
					href="javascript:PageJump('index');">首页 </a></li>
				<li id="jibengk" class="jibengk"><a
					href="javascript:PageJumpNo('jibengk');">关于我们</a>
					<ul id="xiala1" class="xiala1">
						<li id="yjygkjj"><a
							href="javascript:ContentJump('jbgk_wyjs.do','jibengk');">院情简介</a></li>
						<li id="yjygkmbxz"><a
							href="javascript:ContentJump('jbgk_fzlc.do','jibengk');">发展历程</a></li>
						<li id="zzjgxswyh"><a
							href="javascript:ContentJump('jbgk_xswyh.do','jibengk');">学术委员会</a></li>
						<li id="yjygkxrld"><a
							href="javascript:ContentJump('jbgk_sxkxj.do','jibengk');">首席科学家</a></li>
						<li id="zzjg_zzjg_yanfazx"><a
							href="javascript:ContentJump('jbgk_yjyld.do','jibengk');">现任领导</a></li>
						<li id="yjygkywxw"><a
							href="javascript:ContentJump('jbgk_ywxw_frame.do','jibengk');">重要荣誉</a></li>

					</ul>
				</li>
				<li id="xwdtyjydtframe" class="xwdtyjydtframe"><a
					href="javascript:PageJumpNo('xwdtyjydtframe');">新闻中心</a>
					<ul class="xiala2" id="xiala2">						
						<li><a
							href="javascript:ContentJump('xwdt_tztg_frame.do','xwdtyjydtframe');">通知通告</a></li>	
						<li><a
							href="javascript:ContentJump('xwdt_ldsc_frame.do','xwdtyjydtframe');">领导视察</a></li>
						<li><a
							href="javascript:ContentJump('xwdt_zqdj_frame.do','xwdtyjydtframe');">合作交流</a></li>
						<li><a
							href="javascript:ContentJump('xwdt_ygfc_frame.do','xwdtyjydtframe');">员工风采</a></li>						

					</ul>
				</li>
				<li id="cpfayyhygl" class="cpfayyhygl"><a
					href="#product">产品介绍</a></li>
				<li id="kyhdyjfx" class="kyhdyjfx"><a
					href="javascript:PageJumpNo('kyhdyjfx');">科学研究</a>
					<ul class="xiala3" id="xiala3">
						<li><a
							href="javascript:ContentJump('kyhd_kyfx.do','kyhdyjfx');">科研方向</a></li>					
						<li><a
							href="javascript:ContentJump('kyhd_kycg_kyjl.do','kyhdyjfx');">科研成果</a></li>
						<li><a
							href="javascript:ContentJump('kyhd_kycg_kyjl.do','kyhdyjfx');">知识产权</a></li>
					</ul>
				</li>			
				<li id="cxfhframe"><a
					href="javascript:PageJumpNo('cxfhframe');">产业孵化</a>
					<ul class="xiala4" id="xiala4">
						<li><a
							href="javascript:ContentJump('cxfh_fhfw.do','cxfhframe');">孵化服务</a></li>					
						<li><a
							href="javascript:ContentJump('cxfh_zcfc.do','cxfhframe');">众创风采</a></li>
						<li><a
							href="javascript:ContentJump('cxfh_zcjj.do','cxfhframe');">众创基金</a></li>
						<li><a
							href="javascript:ContentJump('cxfh_hdrl.do','cxfhframe');">活动日历</a></li>
						<li><a
							href="javascript:ContentJump('cxfh_tztg_frame.do','cxfhframe');">通知通告</a></li>
					</ul>
				</li>
				<li id="contactus"><a 
					href="javascript:PageJumpNo('contactus');">联系我们</a>
					<ul class="xiala5" id="xiala5">
						<li><a
							href="javascript:ContentJump('lxwm_zxns.do','contactus');">招贤纳士</a></li>					
						<li><a
							href="javascript:ContentJump('lxwm_business.do','contactus');">商务</a></li>
					</ul>
				</li>
			</ul>

		</div>
	</div>
	<div class="clear"></div>
	
	<div class=pagecontent>
		<div class=pageimg>
			<img src="Resources/img/banner_product.png" width="100%"/>
		</div>
		<div class=contentall>
			<div class=blank></div>
			<div class=contentshow>
				<div class=leftnav>
					<div class=ld>产品介绍</div>
					<div class=secondnav>
						<ul>
							<li id="yjygkjj"><a 
								href="javascript:ContentJump('product_industry.do','yjygkjj');"><span
									class="glyphicon glyphicon-triangle-right"
									style="font-size:10px;"></span>智能产业</a></li>
							<li id="yjygkjj"><a 
								href="javascript:ContentJump('product_manufacture.do','yjygkjj');"><span
									class="glyphicon glyphicon-triangle-right"
									style="font-size:10px;"></span>智能制造</a></li>		
							<li id="yjygkjj"><a 
								href="javascript:ContentJump('product_driving.do','yjygkjj');"><span
									class="glyphicon glyphicon-triangle-right"
									style="font-size:10px;"></span>平行驾驶</a></li>
							<li id="yjygkjj"><a 
								href="javascript:ContentJump('product_traffic.do','yjygkjj');"><span
									class="glyphicon glyphicon-triangle-right"
									style="font-size:10px;"></span>平行交通</a></li>
							<li id="yjygkjj"><a
								href="javascript:ContentJump('product_data.do','yjygkjj');"><span
									class="glyphicon glyphicon-triangle-right"
									style="font-size:10px;"></span>视频大数据</a></li>
							<li id="yjygkjj"><a 
								href="javascript:ContentJump('product_health.do','yjygkjj');"><span
									class="glyphicon glyphicon-triangle-right"
									style="font-size:10px;"></span>智慧医疗</a></li>
							<li id="yjygkjj"><a class="active"
								href="javascript:ContentJump('product_logistics.do','yjygkjj');"><span
									class="glyphicon glyphicon-triangle-right"
									style="font-size:10px;"></span>智慧物流</a></li>
							<li id="yjygkjj"><a 
								href="javascript:ContentJump('product_education.do','yjygkjj');"><span
									class="glyphicon glyphicon-triangle-right"
									style="font-size:10px;"></span>智慧教育</a></li>
							<li id="yjygkjj"><a 
								href="javascript:ContentJump('product_argiculture.do','yjygkjj');"><span
									class="glyphicon glyphicon-triangle-right"
									style="font-size:10px;"></span>智慧农业</a></li>
							<li id="yjygkjj"><a 
								href="javascript:ContentJump('product_drone.do','yjygkjj');"><span
									class="glyphicon glyphicon-triangle-right"
									style="font-size:10px;"></span>无人机</a></li>
							<li id="yjygkjj"><a 
								href="javascript:ContentJump('product_energy.do','yjygkjj');"><span
									class="glyphicon glyphicon-triangle-right"
									style="font-size:10px;"></span>平行能源</a></li>
							<li id="yjygkjj"><a 
								href="javascript:ContentJump('product_media.do','yjygkjj');"><span
									class="glyphicon glyphicon-triangle-right"
									style="font-size:10px;"></span>平行传媒</a></li>
													
						</ul>
					</div>
				</div>
				<div class=rightcontent>
					<div class=contentnav>
						<span class="nav_title">智慧物流</span>
						<p>
						    <img src="Resources/img/home.png" width="14px" style="margin-top:-2px;"/>&nbsp;&nbsp;&nbsp;&nbsp;
							<span>产品介绍</span><span>></span>
							<span>智慧物流 </span>
						</p>					
					</div>
					<div class="contents">
						<div class="producttitle">
					
							<div class="productimg">
								<img src="Resources/img/itme_zhwl.jpg" />
							</div>
							<div class="productsum">
								<p>
									<span>智慧物流</span><br>
									智慧物流研究所及其孵化公司“青岛中科慧畅信息科技有限公司”专注于AI+智慧物流领域的研究。
								</p>
							</div>
						</div>	
						<div class="clear"></div>				
						<p>智慧物流研究所及其孵化公司“青岛中科慧畅信息科技有限公司”专注于AI+智慧物流领域的研究。该团队以国际先进理论——基于ACP的平行智能为指导，致力于通过综合运用平行计算、大数据、物联网和AI技术为物流行业提供先进的智慧物流解决方案和产品，在平行无人装卸系统、平行无人拣选系统、智慧物流综合管理平台、平行物流云服务平台等研究领域积累了丰富的经验，其研究成果荣获中国物流与采购联合会授予的《2017年度物流信息平台优秀案例》。智慧物流研究所以平行智能技术赋能传统物流，助力物流产业新旧动能转换。</p>
						<p class="protitlt">研发团队</p>
						<p style="margin-top:0px;">智慧物流研究所集聚了行业知名专家教授，包括中国科学院自动化研究所副研究员刘胜博士，曾荣获教育部科技进步二等奖，国防科技大学姜志宏博士，曾作为技术负责人参与国家、军队和省部级重大项目近20余项、主编国家军用标准2项、授权国家发明专利2项，荣获军队科技进步三等奖1项、三等功一次、国防服役铜质纪念章等多项荣誉，团队同时拥有计算机软件研发、人工智能算法研发等技术领域经验丰富的专业人才队伍，累计申请发明专利3项，授权软著15项，已为青岛啤酒、沈阳铁路局、济南铁路局、青岛港集团、山东高速物流集团、中远海运集团等知名客户提供行业顶级的智慧物流解决方案</p>
						<p class="protitlt">基于平行智能技术的无人装卸系统</p>
						<p style="margin-top:0px;">基于平行智能技术的无人装卸物流装备系统将平行理论、3D视觉、动态装箱算法、深度学习等技术与智能机器人有机融合，对装卸车辆、货物、作业环境等因素进行智能识别，获取三维点云数据，计算装卸坐标与搬运路径，引导机器人完成自动装卸、码垛等作业，实现全自动无人化装卸，大幅提高了装卸的精度和效率。可广泛应用于家电、快消品、电商、日化、食品、医药等物流装卸领域。</p>
						<img src="Resources/img/cpjs/image026.jpg" style="max-width:100%;" />
						<img src="Resources/img/cpjs/image028.png" style="max-width:100%;" />
					
					</div>
					
				</div>
			</div>
		</div>
					
		<div class="clear"></div>
	</div>
	
	<div class="foot">
		<div class="foottext"></div>
		<div class="footnav">					
			<ul>
				<li>
					<div class="footTitle">首页<div class="footline"></div></div>
				</li>
				<li>
					<div class="footTitle">关于我们<div class="footline"></div></div>
					<ul>
						<li ><a
							href="javascript:ContentJump('jbgk_wyjs.do','jibengk');">院情简介</a></li>
						<li ><a
							href="javascript:ContentJump('jbgk_fzlc.do','jibengk');">发展历程</a></li>
						<li ><a
							href="javascript:ContentJump('jbgk_xswyh.do','jibengk');">学术委员会</a></li>
						<li ><a
							href="javascript:ContentJump('jbgk_sxkxj.do','jibengk');">首席科学家</a></li>
						<li ><a
							href="javascript:ContentJump('jbgk_yjyld.do','jibengk');">现任领导</a></li>
						<li ><a
							href="javascript:ContentJump('jbgk_ywxw_frame.do','jibengk');">荣誉奖励</a></li>
					</ul>
				</li>
				<li>
					<div class="footTitle">新闻中心<div class="footline"></div></div>
					<ul>
						<li><a
							href="javascript:ContentJump('xwdt_ldsc_frame.do','xwdtyjydtframe');">通知公告</a></li>
						<li><a
							href="javascript:ContentJump('xwdt_ldsc_frame.do','xwdtyjydtframe');">领导视察</a></li>
						<li><a
							href="javascript:ContentJump('xwdt_zqdj_frame.do','xwdtyjydtframe');">合作交流</a></li>
						<li><a
							href="javascript:ContentJump('xwdt_ygfc_frame.do','xwdtyjydtframe');">员工风采</a></li>
					</ul>
				</li>
				<li>
					<div class="footTitle">科学研究<div class="footline"></div></div>
					<ul>
						<li><a
							href="javascript:ContentJump('kyhd_kyfx.do','kyhdyjfx');">科研方向</a></li>					
						<li><a
							href="javascript:ContentJump('kyhd_kycg_kyjl.do','kyhdyjfx');">科研成果</a></li>
						<li><a
							href="javascript:ContentJump('kyhd_kycg_kyjl.do','kyhdyjfx');">知识产权</a></li>
					</ul>
				</li>
				<li>
					<div class="footTitle">产品介绍<div class="footline"></div></div>
					<ul class="small">
						<li><a
							href="javascript:ContentJump('product_industry.do','kyhdyjfx');">智能产业</a></li>					
						<li><a
							href="javascript:ContentJump('product_manufacture.do','kyhdyjfx');">智能制造</a></li>
						<li><a
							href="javascript:ContentJump('product_driving.do','kyhdyjfx');">平行驾驶</a></li>
						<li><a
							href="javascript:ContentJump('product_traffic.do','kyhdyjfx');">平行交通</a></li>
						<li><a
							href="javascript:ContentJump('product_data.do','kyhdyjfx');">视频大数据</a></li>
						<li><a
							href="javascript:ContentJump('product_health.do','kyhdyjfx');">智慧医疗</a></li>
						<li><a
							href="javascript:ContentJump('product_logistics.do','kyhdyjfx');">智慧物流</a></li>
						<li><a
							href="javascript:ContentJump('product_education.do','kyhdyjfx');">智慧教育</a></li>
						<li><a
							href="javascript:ContentJump('product_argiculture.do','kyhdyjfx');">智慧农业</a></li>
						<li><a
							href="javascript:ContentJump('product_energy.do','kyhdyjfx');">平行能源</a></li>
						<li><a
							href="javascript:ContentJump('product_media.do','kyhdyjfx');">平行传媒</a></li>
						<li><a
							href="javascript:ContentJump('product_drone.do','kyhdyjfx');">无人机</a></li>									
					</ul>
				</li>
				<li>
					<div class="footTitle">创新孵化<div class="footline"></div></div>
					<ul>
						<li><a
							href="javascript:ContentJump('cxfh_fhfw.do','cxfhframe');">孵化服务</a></li>					
						<li><a
							href="javascript:ContentJump('cxfh_zcfc.do','cxfhframe');">众创风采</a></li>
						<li><a
							href="javascript:ContentJump('cxfh_zcjj.do','cxfhframe');">众创基金</a></li>
						<li><a
							href="javascript:ContentJump('cxfh_hdrl.do','cxfhframe');">活动日历</a></li>
						<li><a
							href="javascript:ContentJump('cxfh_tztg_frame.do','cxfhframe');">通知公告</a></li>
					</ul>
				</li>
				<li>
					<div class="footTitle">联系我们<div class="footline"></div></div>
					<ul>
						<li><a
							href="javascript:ContentJump('lxwm_zxns.do','contactus');">招贤纳士</a></li>					
						<li><a
							href="javascript:ContentJump('lxwm_business.do','contactus');">商务</a></li>
					</ul>
				</li>
				<li style="width: 13.8%;">
					<img src="Resources/img/ic_code.png" width="100%"/>
				</li>
			</ul>			
		</div>
		<div class="footlink">
			<ul>
				<li><span style="color:#fff;">友情链接：</span></li>
				<li><a href="http://www.cas.cn/" target="_blank">中国科学院</a></li>
				<li><span style="color:#fff;">|</span></li>
				<li><a href="http://www.ia.cas.cn/" target="_blank">中国科学院自动化研究所</a></li>
				<li><span style="color:#fff;">|</span></li>
				<li><a href="http://www.compsys.ia.ac.cn/" target="_blank">复杂系统管理与控制国家重点实验室</a>
				</li>
				<li><span style="color:#fff;">|</span></li>
				<li><a href="http://www.casc.ac.cn/" target="_blank">东莞科学院云计算产业技术创新与育成中心</a></li>

			</ul>
		</div>
		<div class="copyright">
			<span >青岛智能产业技术研究院 版权所有 鲁ICP备15005983号-1</span>
		    <span class=address>地址：青岛高新区智力岛路1号创业大厦B座26层</span>
		</div>
		
	</div>
	<div class="clear"></div>
</body>

</html>