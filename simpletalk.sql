/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50559
Source Host           : localhost:3306
Source Database       : simpletalk

Target Server Type    : MYSQL
Target Server Version : 50559
File Encoding         : 65001

Date: 2018-05-31 18:03:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin_role`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role` (
  `role_id` int(11) NOT NULL DEFAULT '0',
  `role_name` varchar(100) DEFAULT NULL,
  `role_note` varchar(500) CHARACTER SET latin1 DEFAULT NULL,
  `role_type` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES ('1', 'admin', null, '0');

-- ----------------------------
-- Table structure for `admin_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('0', '1', '0', null);
INSERT INTO `admin_role_menu` VALUES ('1', '1', '1', null);

-- ----------------------------
-- Table structure for `admin_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_role`;
CREATE TABLE `admin_user_role` (
  `id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_user_role
-- ----------------------------
INSERT INTO `admin_user_role` VALUES ('1', '1', '12');

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `istop` int(10) unsigned DEFAULT NULL,
  `id` bigint(64) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `body` mediumtext,
  `created_time` datetime DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `isindex` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (null, '1', '而微软', '[二个好地](http://)方![![](![](![](![](![]([](http://)http://)http://)http://)http://)http://)![](![](![](![](http://)http://)http://)http://)', '2018-03-16 16:31:20', null, '', null);
INSERT INTO `article` VALUES (null, '2', '而', '更多', '2018-05-03 16:37:15', null, '', null);
INSERT INTO `article` VALUES (null, '9', null, null, '2018-04-05 16:31:14', null, null, null);
INSERT INTO `article` VALUES (null, '10', null, null, '2018-04-01 16:31:10', null, null, null);
INSERT INTO `article` VALUES (null, '11', null, null, '2018-04-06 16:31:03', null, null, null);
INSERT INTO `article` VALUES (null, '12', null, null, '2018-05-31 16:31:00', null, null, null);
INSERT INTO `article` VALUES ('1', '13', '这个是测试', '个人住房按揭贷款所需资料\r\n一、申请按揭贷款的条件\r\n（一）借款人必须是具有独立民事能力的个人（18岁-70岁）。如18岁以下人士及70岁以上的人士必须与符合条件人士联名购房，由符合条件人士作为按揭贷款申请人；\r\n（二）借款人申请应有固定职业和稳定收入，具备偿还贷款本息能力；\r\n二、借款人申请按揭贷款必须提供的资料（原件及复印件）\r\n（一）基础资料：\r\n1、借款人及其配偶（如有）身份证复印件---借款人3份、配偶2份；\r\n2、借款人及其配偶（如有）户口本（公安页+户主页+本人页）---各1份\r\n   注：如为集体户口，公安页复印件需：加盖户口寄存单位的公章\r\n3、借款人婚姻状况证明：\r\nA、已婚：结婚证复印件（照片+盖章页）---1份\r\nB、未婚单身：签署由我行提供的单身声明；\r\nC、离异单身：离婚证复印件（照片+盖章页）、离婚协议/法院判决书复印件----1份\r\nD、丧偶单身：结婚证复印件（照片+盖章页）、火化证明/死亡证明复印件----1份\r\n注：如“征信为已婚，实际未婚”，需提供户口所在地街道办开具的《流动人口计划生育证》\r\n4、借款人收入证明原件—注明入职时间、职务、月收入、单位地址、单位联系人名称及单位联系人固话（如无固话，请填手机号码）。\r\n注：A、国企、事业单位、500强企业可以用自己公司的格式要求；\r\n    B、单位联系人不能填写与本笔贷款相关人员；\r\n    C、月收入需覆盖家庭月供款的2倍以上；\r\n5、近半年的个人银行流水原件---尽量提供多几份流水，流水可以叠加起来看\r\n   注：首付流水如有，可提供，有助于贷款的审批\r\n8、认购书复印件---1份\r\n9、房屋买卖合同---1份\r\n10、首期收据复印件---1份\r\n注：请提前为客户算好首期收据总金额，确认是否为足够\r\n11、与首期收据价格对应的刷卡pos或转款凭证---1份\r\n 注：客户的首付款需由借款人本人的银行卡缴交；\r\n（二）其他资产证明（如有可提供，有助于贷款审批）：\r\n银行理财、保单、其他房产及车辆行驶证等\r\n（三）关于逾期与流水、最长借款年限等\r\n1、逾期：原则上近两年“不能连3累6”，特殊情况，单独沟通；\r\n      如贷款或信用卡有当前逾期，需提供相应的结清证明材料方可审批。\r\n2、流水：原则上月稳定收入=家庭月供款*2倍；\r\n3、最长借款年限：借款人年龄+最长借款年限<69岁\r\n	\r\n注：烦请提前与客户确认好贷款金额、年限与还款方式，便于加快签约流程', '2018-05-31 13:45:00', null, '', '1');
INSERT INTO `article` VALUES ('1', '14', '这个是测试', '**junit测试 插入2**![](https://goss4.vcg.com/creative/vcg/400/new/VCG41N963378560.jpg)\r\n![]((https://goss4.vcg.com/creative/vcg/400/new/VCG41N963378510.jpg)\r\n\r\n![]((https://goss4.vcg.com/creative/vcg/400/new/VCG41N963378560.jpg)\r\n**junit测试 插入2**![](https://goss4.vcg.com/creative/vcg/400/new/VCG41N963378560.jpg)\r\n                    \"/images/logo.png\");  \r\n            channel.setTextInput(\"http://localhost/search\",   \r\n                    \"Search The Channel Image\",   \r\n                    \"The Channel Image\",   \r\n                    \"s\");  \r\n            channel.addItem(\"http://localhost:8080/item1\",  \r\n                    \"The First Item covers details on the first item>\",  \r\n                    \"The First Item\")  \r\n                    .setDcContributor(\"Joseph B. Ottinger\");  \r\n            channel.addItem(\"http://localhost:8080/item2\",  \r\n                    \"The Second Item covers details on the second item\",  \r\n                    \"The Second Item\")  \r\n                    .setDcCreator(\"Jason Bell\");       \r\n            return channel.getFeed(\"rdf\");  \r\n        }  \r\n  \r\n}  \r\n![]((https://goss4.vcg.com/creative/vcg/400/new/VCG41N963378560.jpg)\r\n ![]((https://goss4.vcg.com/creative/vcg/400/new/VCG41N963378560.jpg)\r\n\r\n\r\n![]((https://goss4.vcg.com/creative/vcg/400/new/VCG41N963378560.jpg)\r\n\r\n![]((https://goss4.vcg.com/creative/vcg/400/new/VCG41N963378560.jpg)\r\n\r\n\r\n![]((https://goss4.vcg.com/creative/vcg/400/new/VCG41N963378560.jpg)\r\n\r\n(https://goss4.vcg.com/creative/vcg/400/new/VCG41N963378560.jpg)\r\n\r\n![]((https://goss4.vcg.com/creative/vcg/400/new/VCG41N963378560.jpg)\r\n\r\n\r\n\r\n![]((https://goss4.vcg.com/creative/vcg/400/new/VCG41N963378560.jpg)\r\n\r\n\r\n\r\n\r\n![]((https://goss4.vcg.com/creative/vcg/400/new/VCG41N963378560.jpg)\r\n\r\n\r\n\r\n![]((https://goss4.vcg.com/creative/vcg/400/new/VCG41N963378560.jpg)\r\n\r\n\r\n\r\n\r\n![]((https://goss4.vcg.com/creative/vcg/400/new/VCG41N963378560.jpg)\r\n\r\n一、功能描述:\r\n\r\n在我们浏览网站的时候，会看到很多频道，文章的头上会有一个RSS订阅的图标，点进去后会进入feed（供RSS阅读器订阅的一个地址）页面，然后把地址栏的地址复制下来，这就是我们要放入RSS阅读器订阅的feed,放入RSS阅读器后，变可以订阅此内容了。效果图有点烂，可功能都差不多实现了：\r\n\r\n\r\n\r\n\r\n\r\n二、RSS阅读\r\n\r\n阅读RSS主要用了ROME组件，导入jar包后就可以使用，很简单的，提供一个地址，便可以在jsp页面中显示出本地址所有文章，贴上Rome组件的RSS阅读jsp代码：\r\n\r\n[html] view plain copy\r\n<?xml version=\"1.0\" encoding=\"utf-8\" ?>  \r\n<%@page import=\"java.sql.PreparedStatement\"%>  \r\n<%@page import=\"java.sql.*\"%>  \r\n<%@ page language=\"java\" contentType=\"text/html; charset=utf-8\"  \r\n    pageEncoding=\"utf-8\"%>  \r\n<%@ page import=\"db.Database\" %>  \r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">  \r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">  \r\n<head>  \r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />  \r\n<title>Insert title here</title>  \r\n</head>  \r\n<body>  \r\n<%  \r\nrequest.setCharacterEncoding(\"utf-8\");  \r\nString xmlmsg = request.getParameter(\"xmlmsg\");//得到传来的feed地址，通过表单传来就行  \r\n[html] view plain copy\r\n//----------------------------------这是我扩展的功能，可以去掉---------------------------------  \r\n //这里是我扩展的功能，首先查询磁条RSS的feed是否已经订阅过了，如果订阅过了则提示‘已订阅’\r\nDatabase db = new Database();Connection conn = db.getconn();String sql=\"select * from tbl_rss_address where rss_address=?\";PreparedStatement ps = conn.prepareStatement(sql);ps.setString(1,xmlmsg);ResultSet rs = ps.executeQuery();if(rs.next()){out.print(\"对不起,您已经订阅过了此内容\");}\r\n//-------------------------------------------------------------------------------------------\r\n else{//这里就是Rome组件里读取feed的东西了java.util.Properties systemSettings = System.getProperties();systemSettings.put(\"http.proxyHost\", \"mywebcache.com\");systemSettings.put(\"http.proxyPort\", \"8080\");System.setProperties(systemSettings);String urlStr = xmlmsg;//拿到feed地址java.net.URLConnection feedUrl = new java.net.URL(urlStr).openConnection();feedUrl.setRequestProperty(\"User-Agent\", \"Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt)\");com.sun.syndication.io.SyndFeedInput input = new com.sun.syndication.io.SyndFeedInput();com.sun.syndication.feed.synd.SyndFeed feed = input.build(new com.sun.syndication.io.XmlReader(feedUrl));//----------------------这是我扩展的功能，可以去掉---------------------------------------------------------\r\n//把这条RSS的feed地址存入我们的数据库，因为我们只有通过feed地址才能通过Rome组件读出我们订阅的内容，所以要起到订阅的功能，必须把feed存入数据库\r\n sql = \"insert into tbl_rss_address(rss_address,title) values(?,?)\"; ps = conn.prepareStatement(sql);ps.setString(1,xmlmsg);ps.setString(2,feed.getTitle());ps.executeUpdate();//---------------------------------------------------------------------------------------------------------%><div align=\"center\"><h1><%=feed.getTitle()%></h1><table border=1 cellpadding=3 width=\"700\"><tr><th>Number</th><th>Title</th><th>Time</th></tr><%java.util.List list = feed.getEntries();for (int i=0; i< list.size(); i++) {com.sun.syndication.feed.synd.SyndEntry entry = (com.sun.syndication.feed.synd.SyndEntry)list.get(i);%><tr><td><%=i+1%></td><td><a href=\"<%=entry.getLink()%>\"><%=entry.getTitle()%></a></td><td><%=entry.getPublishedDate()%></td></tr><%}%></table></div><br/><%} %></body></html>\r\n三、阅读feed的方法实现了，我们现在制作自己网站文章的feed供RSS阅读器订阅，这里是通过jdom操作xml模版来生成的\r\n[java] view plain copy\r\npackage com.dao;  \r\n  \r\nimport java.io.File;  \r\nimport java.io.FileOutputStream;  \r\nimport java.io.IOException;  \r\nimport java.io.OutputStream;  \r\nimport java.sql.Connection;  \r\nimport java.sql.PreparedStatement;  \r\nimport java.sql.ResultSet;  \r\nimport java.sql.SQLException;  \r\nimport java.sql.Statement;  \r\n  \r\nimport org.jdom.Attribute;  \r\nimport org.jdom.Document;  \r\nimport org.jdom.Element;  \r\nimport org.jdom.output.Format;  \r\nimport org.jdom.output.XMLOutputter;  \r\nimport db.Database;  \r\n  \r\npublic class ProductRss {  \r\n  \r\n    public void cereateRss(String channel2) throws IOException, SQLException{  \r\n          \r\n         Document doc = new Document(); //创建空白文档       \r\n          /* \r\n           * 创建PI并添加到文档 \r\n           */  \r\n//        Map map = new HashMap();  \r\n//        map.put(\"type\",\"text/xsl\");  \r\n//        map.put(\"href\",\"products.xsl\");  \r\n//        ProcessingInstruction pi = new ProcessingInstruction(\"xml-stylesheet\",map);//处理指令   \r\n          //将处理指令添加  \r\n//        doc.addContent(pi);  \r\n            \r\n                /* \r\n                 * 创建文档类型并添加到文档 \r\n                 */  \r\n//        DocType  type  = new DocType(\"productsDetails\"); //文档类型  \r\n//        type.setPublicID(\"public.dtd\");    //设为 public  \r\n//        //type.setSystemID(\"system.dtd\");   //设为 system  \r\n//        //添加文档类型  \r\n//        doc.addContent(type);  \r\n           \r\n                Database db = new Database();//连接数据库  \r\n            Connection conn = db.getconn();  \r\n            Statement stmt = conn.createStatement();  \r\n  \r\n            String sql = \"select * from article where channel=?\";  \r\n            PreparedStatement ps = conn.prepareStatement(sql);  \r\n            ps.setString(1,channel2);  \r\n            ResultSet rs = ps.executeQuery();     \r\n            \r\n      \r\n          /*<rss version=\"2.0\">*/  \r\n          Element root = new Element(\"rss\"); //创建一个元素  \r\n          doc.setRootElement(root); //将该元素做为根元素         \r\n          Attribute  version = new Attribute(\"version\",\"2.0\"); //创建属性  \r\n          root.setAttribute(version); //为product设置属性  \r\n            \r\n          /*<channel>*/                   \r\n          Element channel = new Element(\"channel\");  \r\n          root.addContent(channel); //将product做为productsDetails的子元素                 \r\n          //为product创建子元素，并将其content分别设为100.00,red  \r\n          channel.addContent(new Element(\"title\").setText(\"文章列表\"));   \r\n          channel.addContent(new Element(\"link\").setText(\"www.baidu.com\"));   \r\n          channel.addContent(new Element(\"description\").setText(\"这是我的rss小例子，希望能成功\"));  \r\n            \r\n        while(rs.next()){  \r\n          Element item = new Element(\"item\");  \r\n          channel.addContent(item); //将product做为productsDetails的子元素         \r\n          item.addContent(new Element(\"title\").setText(rs.getString(\"title\")));   \r\n          item.addContent(new Element(\"link\").setText(\"detail.jsp?id=\"+rs.getString(\"id\")));      \r\n          item.addContent(new Element(\"author\").setText(rs.getString(\"author\")));     \r\n          item.addContent(new Element(\"description\").setText(rs.getString(\"description\")));  \r\n        }          \r\n          XMLOutputter outp = new XMLOutputter(Format.getPrettyFormat());  \r\n            \r\n          File file = new File(\"D:\\\\305\\\\c\\\\RomeRssReader\\\\WebContent\\\\data.xml\");//生成的feed  \r\n          OutputStream out = new FileOutputStream(file);  \r\n          outp.output(doc, out); //输出XML文档  \r\n          System.out.print(\"XML 文档生成完毕！\");  \r\n          out.close();  \r\n                            \r\n         }  \r\n          \r\n    }  \r\n\r\n这样就生成了D:\\\\305\\\\c\\\\RomeRssReader\\\\WebContent\\\\data.xml这样一个feed，可以阅读了。\r\n其实feed就是一个xml文件..里面有特定的标签的....我们生成feed就是用jdom去生成这个xml文件。\r\n\r\n整个程序代码：在这里下载       http://download.csdn.net/detail/caoyuan10036/3975039\r\n\r\n\r\n![]((https://goss4.vcg.com/creative/vcg/400/new/VCG41N963378560.jpg)', '2018-05-31 13:45:04', null, '', '1');
INSERT INTO `article` VALUES ('1', '15', '就一定要大力发展科学技术，努力成为世界主要科学中心和创新', '**【*学习进行时*】**5月28日，习近平总书记出席两院院士大会并发表重要讲话。他强调，中国要强盛、要复兴，就一定要大力发展科学技术，努力成为世界主要科学中心和创新高地。如何建设世界科技强国？习近平提出了哪些要求？新华社《学习进行时》原创品牌栏目“讲习所”今天推出文章，为您解读。\r\n\r\n“中国要强盛、要复兴，就一定要大力发展科学技术，努力成为世界主要科学中心和创新高地。” 的\r\n\r\n5月28日，习近平总书记出席两院院士大会并发表重要讲话，深刻总结了十八大以来我国科技事业发生的历史性变革、取得的历史性成就，指出我国科技实力正处于从量的积累向质的飞跃、点的突破向系统能力提升的重要时期。\r\n\r\n基于这个重大判断，习近平提出一系列要求，为今后一个时期科技事业发展指明了方向。其中有十个关键词尤其值得注意，建设世界科技强国的重点和最需要把握的问题都在这里。\r\n\r\n1.历史性交汇期\r\n\r\n习近平：我们必须清醒认识到，有的历史性交汇期可能产生同频共振，有的历史性交汇期也可能擦肩而过。\r\n\r\n这个“历史性交汇期”，即世界新一轮科技革命和产业变革同我国转变发展方式的历史性交汇期。\r\n\r\n纵观工业革命以来的世界历史，每一次科学技术的大飞跃都推动了经济社会的大发展。在中国近代史上，与科技革命失之交臂而导致落后挨打的悲惨命运也同样历历在目。\r\n\r\n今天，我们再次迎来了一个历史性交汇期，科学技术从来没有像今天这样深刻影响着国家前途命运，从来没有像今天这样深刻影响着人民生活福祉；我们也比历史上任何时期都更接近中华民族伟大复兴的目标。\r\n\r\n习近平正是从把握历史和国运的高度来看待科技事业。在这个重大历史关头，我们必须努力实现“同频共振”，避免“擦肩而过”。\r\n\r\n2.高质量科技供给\r\n\r\n习近平：要充分认识创新是第一动力，提供高质量科技供给，着力支撑现代化经济体系建设。\r\n\r\n当前，新一轮科技革命和产业变革引发了全球经济结构的重塑，科学技术与实体经济深度融合，经济发展的质量越来越取决于其中的科技含量。可以说，没有高质量科技供给，就没有高质量经济发展。\r\n\r\n提供高质量科技供给，着力支撑现代化经济体系建设，是我国产业迈向全球价值链中高端的必由之路，也是我国科技工作者的重要职责和使命。\r\n\r\n3.创新信心\r\n\r\n习近平：要矢志不移自主创新，坚定创新信心，着力增强自主创新能力。\r\n\r\n攀登世界科技高峰没有捷径，必须走自主创新的道路，而坚定创新信心则是自主创新的前提条件。\r\n\r\n习近平提出“创新信心”，强调的是面对机遇积极有为的态度，也是面对挑战沉着应对的定力，更是面对形势一往无前的决心。既不妄自菲薄，也不妄自尊大，勇于攻坚克难、追求卓越、赢得胜利，这些都是“创新信心”的重要内涵，是我们成为世界主要科学中心和创新高地所必需的精神力量。\r\n\r\n4.关键核心技术\r\n\r\n习近平：努力实现关键核心技术自主可控，把创新主动权、发展主动权牢牢掌握在自己手中。\r\n\r\n关键核心技术事关创新主动权、发展主动权，也事关国家经济安全、国防安全和其他安全。掌握不了关键核心技术，就会“缺芯少魂”。对此，习近平语重心长：如果这个“命门”掌握在别人手里，“那就好比在别人的墙基上砌房子，再大再漂亮也可能经不起风雨，甚至会不堪一击”。\r\n\r\n“实践反复告诉我们，关键核心技术是要不来、买不来、讨不来的。”科学越是发展，技术越是进步，我们就越要牢记习近平这句话。\r\n\r\n5.科技体制改革\r\n\r\n习近平：科技体制改革要敢于啃硬骨头，敢于涉险滩、闯难关，破除一切制约科技创新的思想障碍和制度藩篱，正所谓“穷则变，变则通，通则久”。\r\n\r\n在习近平看来，改革也是创新，科技创新和制度创新好比车之两轮，“双轮驱动”才能行稳致远。\r\n\r\n科学研究是最具创造性的活动，也是最依赖创新激情的活动。科技体制改革就是要把人的创造性从不合理的经费管理、人才评价等体制束缚中解放出来。只有不断破除体制机制上的障碍，才能最大限度解放和激发科技作为第一生产力所蕴藏的巨大潜能。科技创新永无止境，科技体制改革也永远在路上。\r\n\r\n6.全球科技治理\r\n\r\n习近平：深度参与全球科技治理，贡献中国智慧，着力推动构建人类命运共同体。\r\n\r\n自主和开放辩证统一是习近平谋划和推动科技发展的内在要求。他强调，发展科学技术必须具有全球视野，自主创新是开放环境下的创新，绝不能关起门来搞，而是要“聚四海之气、借八方之力”。\r\n\r\n与此同时，我们发展科学技术不仅要为中国人民谋幸福，也要为人类进步事业作贡献。深度参与全球科技治理，主动布局和积极利用国际创新资源，共同应对人类共同挑战，推动全球范围平衡发展，也是“构建人类命运共同体”很重要的内容。\r\n\r\n7.创新人才\r\n\r\n习近平：全部科技史都证明，谁拥有了一流创新人才、拥有了一流科学家，谁就能在科技创新中占据优势。\r\n\r\n科技强国战略是人才引领发展的战略，硬实力、软实力，归根到底要靠人才实力。\r\n\r\n这篇讲话，习近平用很长的篇幅专门讲人才。人才评价制度、管理制度不合理，科技奖励制度需完善，繁文缛节，人才队伍结构性矛盾……习近平一一给出了解决的方法和途径，归纳起来一句话：通过改革，“不拘一格降人才”。唯有如此，才能形成天下英才聚神州、万类霜天竞自由的创新局面。\r\n\r\n8.科学报国\r\n\r\n习近平：希望广大院士弘扬科学报国的光荣传统，追求真理、勇攀高峰的科学精神，勇于创新、严谨求实的学术风气，把个人理想自觉融入国家发展伟业，在科学前沿孜孜求索，在重大科技领域不断取得突破。\r\n\r\n“繁霜尽是心头血，洒向千峰秋叶丹。”习近平引用这句诗高度评价了一代代科学家为祖国和人民作出的重大贡献，盛赞他们是民族英雄。他们甘愿“干惊天动地事，做隐姓埋名人”，科学报国的理想是最坚定的支撑。这种爱国主义情怀，就是我国科技工作者的“初心”。\r\n\r\n一代人有一代人的奋斗，一个时代有一个时代的担当。然而，无论事业发展到什么阶段，无论时代如何变迁，“科学报国”永远是广大科技工作者不懈奋斗的动力之源。\r\n\r\n9.青年\r\n\r\n习近平：青年是祖国的前途、民族的希望、创新的未来。青年一代有理想、有本领、有担当，科技就有前途，创新就有希望。\r\n\r\n建设世界科技强国不是敲锣打鼓就能实现的，也不是一朝一夕就能完成的，必须靠一代代人艰辛探索、接力奋斗。习近平对各级党委和政府提出一系列关爱青年的要求，目的就是要让有理想、有情怀、有责任、有担当的接班人永不断档。\r\n\r\n习近平还强调，要让科技工作成为富有吸引力的工作、成为孩子们尊崇向往的职业，给孩子们的梦想插上科技的翅膀，让未来祖国的科技天地群英荟萃，让未来科学的浩瀚星空群星闪耀！\r\n\r\n10.中国共产党领导\r\n\r\n习近平：中国共产党领导是中国特色科技创新事业不断前进的根本政治保证。\r\n\r\n这次讲话，习近平用六段“我们坚持”，五段“我们着力”，深刻总结了党的十八大以来，我国科技事业发生的历史性变革、取得的历史性成就。我国科技事业之所以能够密集发力、加速跨越，实现了历史性、整体性、格局性重大变化，最根本的原因是以习近平同志为核心的党中央观大势，谋全局，深化改革，全面发力，对科技事业的坚强领导。\r\n\r\n每一个“我们坚持”，每一个“我们着力”都证明了，中国共产党领导是中国特色科技创新事业不断前进的根本政治保证。只有坚持和加强党对科技事业的领导，建设世界科技强国的事业才能始终沿着正确政治方向推进。', '2018-05-31 13:45:06', null, '', '1');

-- ----------------------------
-- Table structure for `article_tag`
-- ----------------------------
DROP TABLE IF EXISTS `article_tag`;
CREATE TABLE `article_tag` (
  `article_id` bigint(64) unsigned NOT NULL,
  `tag_id` bigint(64) unsigned NOT NULL,
  PRIMARY KEY (`article_id`,`tag_id`),
  KEY `fk_article_tag_tag_tag_id` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_tag
-- ----------------------------
INSERT INTO `article_tag` VALUES ('14', '3');
INSERT INTO `article_tag` VALUES ('14', '4');
INSERT INTO `article_tag` VALUES ('15', '5');
INSERT INTO `article_tag` VALUES ('15', '6');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menu_id` int(11) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `url` varchar(500) CHARACTER SET latin1 DEFAULT NULL,
  `image` varchar(500) CHARACTER SET latin1 DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modifyed_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('0', null, '', null, null, '2018-05-17 16:45:13', null);
INSERT INTO `menu` VALUES ('1', '0', '', null, null, '2018-05-17 16:45:13', null);

-- ----------------------------
-- Table structure for `post`
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int(11) NOT NULL DEFAULT '0',
  `author` int(11) DEFAULT NULL,
  `post_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `content` varchar(5000) DEFAULT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `excerpt` varchar(1000) DEFAULT NULL,
  `post_status` varchar(20) DEFAULT NULL,
  `comment_status` varchar(20) DEFAULT NULL,
  `modified_time` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `post_type` int(11) DEFAULT NULL,
  `coment_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of post
-- ----------------------------

-- ----------------------------
-- Table structure for `tag`
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` bigint(64) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(32) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES ('1', '嘎嘎嘎', null, '', null, null);
INSERT INTO `tag` VALUES ('2', '烦烦烦', null, '', null, null);
INSERT INTO `tag` VALUES ('3', '测试', null, '', null, null);
INSERT INTO `tag` VALUES ('4', 'junit', null, '', null, null);
INSERT INTO `tag` VALUES ('5', '测试', null, '', null, null);
INSERT INTO `tag` VALUES ('6', 'junit', null, '', null, null);
INSERT INTO `tag` VALUES ('7', '哈哈哈', null, '', null, null);

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `login_name` varchar(50) DEFAULT NULL,
  `display_name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nice_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `qq` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `url` varchar(120) DEFAULT NULL,
  `registered` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('12', 'admin', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'admin', 'admin@tt.com', '34234234', '13800138000', null, '2018-05-04 10:32:25', '1');
