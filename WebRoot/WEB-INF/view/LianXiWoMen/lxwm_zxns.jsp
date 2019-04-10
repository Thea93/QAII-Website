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
<link rel="stylesheet" type="text/css" href="Resources/css/common.css">
<link type="text/css" rel="stylesheet"
	href="Resources/css/bootstrap.min.css" />
<script type="text/javascript" src="Resources/js/jQuery-1.11.0.js"></script>
<script type="text/javascript" src="Resources/js/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="Resources/js/bootstrap-paginator.js"></script>
<script type="text/javascript" src="Resources/js/pages.js"></script>
<script type="text/javascript" src="Resources/js/Jump.js"></script>
<script type="text/javascript" src="Resources/js/common.js"></script>
<script type="text/javascript" src="Resources/js/BackSpace.js"></script>
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
		.fuserver{
			border-top:1px solid #ededed;
			margin:0px;
			padding:0px;
		}
		.fuserver,.fuserver li{
			list-style:none;
			border-bottom:1px solid #ededed;
			min-height:47px;
			line-height:47px;
		} 
		.fuserver .titles{
		color:#134290;font-weight:bold;}
		.show{
		    margin-top: 20px;
		    margin-right: 20px;
		    float: right;
			width:14px;
			height:7px;
			background:url(Resources/img/show.png) no-repeat;}
		.showbox{
		background:#f7f7f7;
		padding:10px;
		display:none;}
		.contact_way{
		margin-top:48px;
	}
	.contact_way h4{
		color:rgb(0,62,141);
		font-family: "微软雅黑";
		border-bottom:1px solid gray;
		
	}	
	.contact_way p{
		color:#333333;
		font-size:12px;
		font-family: "微软雅黑";
		margin:0;
		padding:0;
		text-indent: 0em;
		
		
	}	
</style>
<script>
$(function() {
	$(".handle").click(function(){
		$(this).siblings().children(".showbox").hide();
		 $(this).children(".showbox").toggle();
	});
});	
</script>
<body style="overflow:auto;overflow-x:hidden;margin:0 0">
	<div id="header" class="header">
		<div class="headertop">
			<div class="headerinner">
				<img src="Resources/img/ic_logo.png" height="40px"/>	
				<!-- <div class=language>
					<a class="lanActive" href="index.do">中文</a> | <a href="index_e.do">English</a>
				</div> -->			
			</div>
		</div>
		<div class="nav" id="nav">
			<ul class="nav-main" id="nav-main">
				<li id="home" class="home"><a
					href="javascript:PageJump('index');">首页 </a></li>
				<li id="jibengk" class="jibengk"><a
					href="javascript:PageJumpNo('jibengk');">智能院概况</a>
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
				<li id="cpfayyhygl" class="cpfayyhygl"><a href="javascript:ContentJump('product_industry.do','kyhdyjfx');">产品介绍</a></li>
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
						<!-- <li><a
							href="javascript:ContentJump('cxfh_hdrl.do','cxfhframe');">活动日历</a></li> -->
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
			<img src="Resources/img/banner_contact.png" width="100%"/>
		</div>
		<div class=contentall>
			<div class=blank></div>
			<div class=contentshow>
				<div class=leftnav>
					<div class="ld">联系我们</div>
					<div class=secondnav>
						<ul>
							<li><a class="active"
								href="javascript:ContentJump('lxwm_zxns.do');"><span
									class="glyphicon glyphicon-triangle-right"
									style="font-size:10px;"></span>招贤纳士</a></li>	
							<li><a
								href="javascript:ContentJump('lxwm_business.do');"><span
									class="glyphicon glyphicon-triangle-right"
									style="font-size:10px;"></span> 商务</a></li>	
															
						</ul>
					</div>
				</div>
				<div class=rightcontent>
					<div class=contentnav>
						<span class="nav_title">招贤纳士</span>
						<p>
							<img src="Resources/img/home.png" width="14px" style="margin-top:-2px;"/>&nbsp;&nbsp;&nbsp;&nbsp;
							<span>联系我们</span><span>></span>
							<span>招贤纳士</span>
						</p>					
					</div>

					<div class=contents>
						<p>人才是最宝贵的财富，是发展的真正动力。智能院信奉以人为本的管理理念，重视人才的开发和培养，并竭力为人才成长创造条件，做到以事业留人、以发展留人、以文化留人。通过对人员的合理配置、丰富的员工培训、完善的劳动关系管理和绩效评估体系等一系列活动，将先进的人力资源管理思想转化为适合智能院发展的、可操作的制度，提高人力资源的管理水准。遵循"招培同步，内外结合，德才兼备”的原则，以爱才之心，求才之渴，结九州人脉，纳四海英才。随时接收员工的合理化建议，与员工互动，营造规范化管理与人文管理相结合的环境和氛围，通过各种方式培养员工的荣誉感，激发工作的积极性，培养创新的意识，激发创新的潜能，提供创新的舞台。</p>
						<ul class="fuserver">
							<li class="handle">
								<div class="titles">·&nbsp;科研助理<div class="show"></div></div>
								<div class="showbox">
									<div>需求部门：平行工作室</div>
									<div>需求人数：1人</div>
									<div>岗位职责：</div>
									<div>
										1. 身体健康，品行端正，工作踏实，责任心强，乐于奉献；<br />
										2. 有较强的综合协调能力. 团队协作精神，较好的服务意识和创新意识；<br />
										3. 工作积极主动，执行力强，善于沟通； <br />
										4. 硕士及以上学历，优先考虑985或211高校毕业学生； <br />
										5. 较好的科研基础和组织管理能力，曾发表SCI/EI论文. 撰写过专利；<br />
										6. 有较强的英语表达及计算机应用能力；<br />
										7. 负责科技活动报告PPT制作；<br />
										8. 协助工作室负责人做好学术成果梳理等科研管理工作； <br />
										9. 对于各类最新的智能科技产品及其功能有一定了解。
									</div>
								</div>
							</li>
							<li class="handle">
								<div class="titles">·&nbsp;文案策划<div class="show"></div></div>
								<div class="showbox">
									<div>需求部门：平行工作室</div>
									<div>需求人数：1人</div>
									<div>岗位职责：</div>
									<div>
										1. 独立策划并撰写各类稿件（新闻稿、综述稿、专访稿等）； <br />
										2. 擅长科技话题与人物大咖的跟踪、深入调研与文案撰写； <br />
										3. 具备较强的创新与智能科技应用分析能力，分析与解决问题的能力。
									</div>
									<div>任职要求：</div>
									<div>
										1. 有一定的科技行业积累，可以独立组织和策划选题；<br />
										2. 逻辑清晰，表达流畅，文笔出色，善于交流，对于当前人工智能领域的各领军人物有基本了解；<br />
										3. 自我驱动，热爱这份工作，并把它当作一份事业来看待；<br />
										4. 英语6级及以上；<br />
										5. 大学本科以上学历。
									</div>
								</div>
							</li>
							<li class="handle">
								<div class="titles">·&nbsp;市场推广专员<div class="show"></div></div>
								<div class="showbox">
									<div>需求部门：智能制造研究所</div>
									<div>需求人数：1人</div>
									<div>岗位职责：</div>
									<div>
										1. 负责市场各类宣传活动的策划及实施，拓展销售渠道；<br />
										2. 开展讲座、解答无人机的相关问题；<br />
										3. 区域市场操作思路与操作模式；<br />
										4. 媒体信息的收集、整理与反馈；<br />
										5. 有一定的设计能力和软件应用；<br />
										6. 业务流程的了解与熟悉。
									</div>
									<div>任职要求：</div>
									<div>
										1. 本科学历及其以上，市场营销专业优先；<br />
										2. 良好的沟通能力，语言表达能力强；<br />
										3. 性格积极向上，团队合作意识强；<br />
										4. 工作主动性强，耐心细致，有责任心；<br />
										5. 敏锐、独到的观察力和策划、组织能力，具有开拓创新精神；<br />
										6. 口头表达能力和文档写作能力强，做过报告、课程辅导、讲座等相关经验者优先；<br />
										7. 了解无人机的飞行原理优先。
									</div>
								</div>
							</li>
							<li class="handle">
								<div class="titles">·&nbsp;创客教育研发工程师<div class="show"></div></div>
								<div class="showbox">
									<div>需求部门：高端教育与服务中心</div>
									<div>需求人数：1人</div>
									<div>岗位职责：</div>
									<div>
										1. 研发物联网、机器人、虚拟现实等电子类、编程类课程及配套教程、课件；<br />
										2. 结合研究所已有成果，研发面向中小学生的教育装备和系统；<br />
										3. 中小学创客教育课程的定制设计；<br />
										4. 参与课程教学；<br />
										5. 配合部门安排的课程推广活动和宣传活动；<br />
										6. 指导中小学生参加物联网和机器人等大赛。
									</div>
									<div>任职要求：</div>
									<div>
										１. 熟悉智能硬件、 软件编程、3D打印及建模、激光切割及设计的一种或多种技能；<br />
										２. 有乐高、少儿编程、机器人课程或STEAM课程的教授及研发经验者优先；<br />
										３. 有青少年创客培训从业经验者优先；<br />
										４. 擅长沟通表达，喜欢与人交流互动，善于学习钻研，有独立开发课程的能力。
									</div>
								</div>
							</li>			
							
							<!-- <li class="handle">
								<div class="titles">·&nbsp;市场专员<div class="show"></div></div>
								<div class="showbox">
									<div>岗位职责：</div>
									<div>
										1、组织编制与修订工程成本管理规范文件，并对各项目的执行情况进行监督；参与基建项目的招投标工作；<br />
										
										2、组织编制目项招标控制价并进行复审，负责施工过程中成本管理（含进度款、各类变更签证审核）等管理；<br />
										
										3、负责本部门所有对内对外的协调工作；组织内部造价合约的业务交流培训；负责工程团队成本合约交底及检查监督；<br />
										
										4、组织数据库归档、整理；提供决策所需各项成本数据信息、对项目进行经济后评价；
									</div>
									<div>招聘要求：</div>
									<div>
										1、工程造价或相关专业大学专科及以上学历；<br />

										2、有工程造价、成本管理等方面培训经历；<br />
										
										3、5年以上工程造价管理经验，初级职称及以上，注册造价师尤佳；
									</div>
								</div>
							</li> -->
						</ul>
						
						<div class="contact_way">
							<h4>联系方式</h4>
							<p>工作地点：青岛高新区智力岛路1号创业大厦B座26层</p>
							<p>招聘热线：0532-68012187</p>
							<p>简历投递邮箱：hr@qaii.ac.cn</p>
						</div>
					</div>

				</div>

			</div>
		</div>
	</div>
	<div class="clear"></div>
	
	
		<div class="foot">
		<div class="foottext"></div>
		<div class="footnav">					
			<ul>
				<li>
					<div class="footTitle">首页<div class="footline"></div></div>
				</li>
				<li>
					<div class="footTitle">智能院概况<div class="footline"></div></div>
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
					<div class="footTitle">产业孵化<div class="footline"></div></div>
					<ul>
						<li><a
							href="javascript:ContentJump('cxfh_fhfw.do','cxfhframe');">孵化服务</a></li>					
						<li><a
							href="javascript:ContentJump('cxfh_zcfc.do','cxfhframe');">众创风采</a></li>
						<li><a
							href="javascript:ContentJump('cxfh_zcjj.do','cxfhframe');">众创基金</a></li>
						<!-- <li><a
							href="javascript:ContentJump('cxfh_hdrl.do','cxfhframe');">活动日历</a></li> -->
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
