import 'package:appsv/screen/home/detail.dart';
import 'package:appsv/screen/home/more.dart';
import 'package:appsv/screen/model/home_model.dart';
import 'package:appsv/screen/profile/auth_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String page = "Home";
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AuthController authController = AuthController();

  void _toMorePage(homei homeie) {
    Navigator.pushNamed(context, MorePage.page, arguments: homeie);
  }

  void _toItemDetailPage(homeim Homeim) {
    Navigator.pushNamed(context, ItemDetailPage.page, arguments: Homeim);
  }

  @override
  Widget build(BuildContext context) {
    final List<homei> homeie = [
      homei(name: "ตัวละคร", list: [
        homeim(
            name: "Alex",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/0/04/Alex.png",
            detail:
                "วันเกิด:	Summer 13 อาศัยอยู่ใน: Pelican Town ที่อยู่:	1 River Road ครอบครัว: George(ปู่) และEvelyn (ย่า) แต่งงาน:	สามารถแต่งงานด้วยได้ ของขวัญที่ชอบ:	Complete Breakfast และSalmon Dinner อเล็กซ์ชอบเล่นกีฬาและออกไปเที่ยวเล่นที่ชายหาด เขาค่อนข้างจะทะนงตัวและพูดอวดตัวเองอยู่เสมอว่าเขากำลังจะขึ้นไปเป็นนักกีฬามืออาชีพ หรือความขี้โอ่นี้จะเป็นแค่หน้ากากที่เค้าใช้ปกปิดความไม่มั่นใจในตัวเอง? หรือเขากำลังใช้ความฝันเรื่องกีฬานี้เติมเต็มที่ว่างเปล่าในใจเรื่องที่ตอนเด็กๆพ่อแม่ได้ทิ้งเขาไป? หรือว่าเค้าแค่เป็นเด็กทะลึ่งคนหนึ่งที่พยายามทำให้ตัวเองดูเจ๋งในสายตาคนอื่น อเล็กซ์เป็นชาวบ้านคนหนึ่งที่อาศัยอยู่ใน Pelican Town เขาเป็นหนึ่งในสิบตัวละครที่สามารถขอแต่งงานได้เขาอาศัยอยู่ในบ้านที่อยู่ทางตะวันออกเฉียงใต้ของร้าน Pierre‘s General Store."),
        homeim(
            name: "Elliott",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/b/bd/Elliott.png",
            detail:
                "วันเกิด:	วันที่ 5 ฤดูใบไม้ร่วง Fall อาศัยอยู่ใน:	Pelican Town ที่อยู่:	Elliott’s Cabin เพื่อน: Willy และLeah แต่งงาน:	ได้ ของขวัญที่ชอบ: Crab Cakes,Tom Kha Soup,Duck Feather และ Lobster อีเลียตอาศัยอยู่ในกระท่อมริมหาดอยู่คนเดียว เขาเป็นนักเขียนที่ฝีความฝันว่า วันหนึ่งจะเขียนนิยายที่ดีเลิศให้ได้ อีเลียตเป็นคนที่ “โรแมติก” เอามากๆ และชอบชวนพูดคุยเกี่ยวกับดอกไม้และบทกวี เขาชื่นชอบการไปดื่มที่ร้านเหล้ายามที่เขามีเงินพอที่จะจ่ายได้ แล้วชาวไร่สมถะอย่างคุณจะสามารถเป็นแรงบันดาลใจอย่างที่อีเลียตตามหาได้หรือไม่ มีเพียงหนทางเดียวที่จะรู้ได้"),
        homeim(
            name: "Harvey",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/9/95/Harvey.png",
            detail:
                "วันเกิด:	Winter 14 อาศัยอยู่ใน:	Pelican Town ที่อยู่:	Medical Clinic แต่งงาน:	ได้ ของขวัญที่ชอบ: Super Meal,Lobster Bisque,Truffle Oil,Wine และ Pickles Harvey เป็นหมอของเมือง เขาค่อนข้างแก่ไปซักหน่อยสำหรับหนุ่มโสด แต่เขาก็เป็นคนจิตใจดีและได้รับความเคารพในหมู่บ้าน เขาอยู่ในอพาร์ตเม้นเล็กๆชั้นสองของคลินิก แต่มักจะใช้เวลาไปกับการทำงานเสียมากกว่า คุณจะรู้สึกถึงความเศร้าในตัวเขา เพราะเขามีบางสิ่งที่ไม่ได้บอกคุณ"),
        homeim(
            name: "Abigail",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/8/88/Abigail.png",
            detail:
                "วันเกิด:	Fall 13 อาศัยอยู่ใน:	Pelican Town ที่อยู่:	Pierre’s General Store ครอบครัว: Pierre(พ่อ) และ Caroline(แม่) แต่งงาน:	แต่งได้ ของขวัญที่ชอบ: Blackberry Cobbler,Chocolate Cake,Spicy Eel,Pufferfish,Amethys,Pumpkin Abigail อาศัยอยู่ที่ร้านขายของกับพ่อแม่ของเธอ เธอมักจะทะเลาะกับแม่ของเธอที่กังวลเกียวกับการทำตัวแนวๆไม่เหมือนไคร แม่ของเธอมักพูดว่า ” ฉันอยากจะให้ Abigail แต่งตัวให้มันเหมาะสมมากกว่านี้แล้วก็หยุดย้อมผมสีน้ำเงินของเธอด้วยนะ สีผมธรรมชาติของเธอสวยมากเหมือนกับคุณยายของเธอเลย หวังว่าเธอจะสนใจเรื่องดีดีแทนเรื่องไร้สาระพวกนี้นะ” คุณอาจจะพบ Abigail คนเดียวในสุสานหรึออาจจะออกมาหากบในวันที่ผนตกก็เป็นได้"),
        homeim(
            name: "Sam",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/9/94/Sam.png",
            detail:
                "วันเกิด:	Summer 17 อาศัยอยู่ใน:	Pelican Town ที่อยู่:	1 Willow Lane ครอบครัว: Kent(Father),Jodi(Mother),Vincent (Brother) เพื่อน: Sebastian แต่งงาน: ได้ ของขวัญที่ชอบ: Maple Bar,Cactus Fruit,Pizza Sam เป็นคนเข้าสังคมเก่ง มีอัธยาศัยดี เขาจะเติมเต็มคุณด้วยพลังงานที่มีอยู่ในตัวเขา เขาเล่นกีตาร์และตีกลอง และอยากจะสร้างวงดนตรีกับ Sebastian เมื่อเขามีเพลงมากพอ อย่างไรก็ตามเขามักจะเริ่มต้นสร้างโปรเจคด้วยความทะเยอทะยานแต่ทิ้งไว้ไม่ทำให้สำเร็จ  Sam ค่อนข้างเครียดกับพ่อที่ไปทำงานนอกเมืองเป็นเวลาหลายปีและกำลังจะกลับมาในไม่ช้า. "),
        homeim(
            name: "Sebastian",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/a/a8/Sebastian.png",
            detail:
                "วันเกิด:	Winter 10 อาศัยอยู่ใน:	Pelican Town ที่อยู่:	Carpenter’s Shop ครอบครัว: Robin(Mother),Maru(Half-Sister),Demetrius (Step-Father) เพื่อน: Sam,Abigail แต่งงาน:	แต่งได้ ของขวัญที่ชอบ: Sashimi,Pumpkin Soup,Fire Quartz,Frozen Tear เซบาสเตียนเป็นคนขวางโลกผู้ซึ่งรักสันโดษที่อาศัยอยู่ในชั้นใต้ดินของบ้านพ่อแม่ของเขา  เขาเป็นพี่ชายต่างพ่อคนโตของมารุและตัวเขาเองก็รู้สึกว่าทั้งพ่อและแม่ต่างก็รักและให้ความสนใจแต่กับมารุในขณะที่เขาโดนปล่อยให้เป็นหมาหัวเน่าอยู่ในความมืด  เขามีความคิดที่อยากจะเข้าไปอยู่ในโลกแห่งเกม, หนังสือการ์ตูนและนิยายsci-fi และบางครั้งก็ใช้เวลาส่วนมากในการทำงานอดิเรกเหล่านี้ในห้องของเขาคนเดียว  เขาค่อนข้างจะไม่เป็นมิตรกับคนที่เขาไม่รู้จัก หรือจะเป็นชาวสวนคนใหม่ที่สามารถเข้าไปปลูกต้นรักในพื้นที่หัวใจอันว่างเปล่าของเขาได้? ใครจะไปรู้ล่ะ?"),
        homeim(
            name: "Haley",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/1/1b/Haley.png",
            detail:
                "วันเกิด:	Spring 14 อาศัยอยู่ใน:	Pelican Town ที่อยู่:	2 Willow Lane ครอบครัว: Emily (Sister) แต่งงาน:	ได้ ของขวัญที่ชอบ: Pink Cake,Fruit Salad,Sunflower,Coconut การที่เป็นคนรวยและดาวเด่นในโรงเรียนทำให้เฮลี่ย์เป็นคนที่ค่อนข้างหยิ่งทะนงตัวและชอบยกความคิดของตัวเองเป็นหลักโดยไม่สนใจใคร เธอมีนิสัยชอบเอาเหตุผลตื้นๆมาตัดสินคนอื่นอยู่เสมอมันจะสายไปสำหรับเธอมั้ยนะที่จะค้นหาความหมายของคำว่าชีวิตอย่างลึกซึ้ง มีความสุขและเปิดใจเธอที่ถูกซ่อนอยู่ภายในเปลือกสีหวานนั่นมั้ยนะ?"),
        homeim(
            name: "Leah",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/e/e6/Leah.png",
            detail:
                "วันเกิด:	Winter 23 อาศัยอยู่ใน:	Pelican Town ที่อยู่:	Leah’s Cottage เพื่อน: Elliott แต่งงาน:	แต่งได้ ของขวัญที่ชอบ: Salad,Vegetable Stew,Stir Fry,Poppyseed Muffin,Wine ลีอาห์อาศัยอยู่คนเดียวในกระท่อมหลังเล็กนอกเมือง เธอชอบใช้เวลาอยู่ข้างนอกบ้านหาเก็บของป่าหรือเพียงแค่เพลิดเพลินไปกับของขวัญในตามแต่ละเทศกาลเท่านั้น เธอเป็นจิตรกรผู้มีพรสวรรค์พร้อมกับมีผลงานสะสมชิ้นใหญ่แต่กระนั้นเธอก็ยังกระวนกระวายใจที่จะโชว์งานพวกนั้นให้คนอื่นๆได้เห็น มันน่าจะดีถ้าคุณสามารถเพิ่มความมั่นใจให้กับเธอได้?"),
        homeim(
            name: "Maru",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/f/f8/Maru.png",
            detail:
                "วันเกิด:	Summer 10 อาศัยอยู่ใน:	Pelican Town ที่อยู่:	24 Mountain Road ครอบครัว: Demetrius(Father),Robin(Mother),Sebastian(Half-Brother) แต่งงาน:	ได้ ของขวัญที่ชอบ: Cheese Cauliflower,Pepper Poppers,Rhubarb Pie,Miner’s Treat,Strawberry,Diamond,Gold Bar,Iridium Bar,Battery Pack	เธอเติบโตมากับผู้ปกครองที่เป็นช่างไม้และนักวิทยาศาสตร์, มารุหลงใหลในการสร้างแกดเจ็ตเมื่อเธอยังเด็ก เมื่อใดที่เธอไม่ได้อยู่ในห้องของเธอ, เธอจะเล่นดนตรีด้วยเครื่องมือและเครื่องจักร, บางครั้งเธอก็ไปทำงานแปลกๆที่คลินิกท้องถิ่น เธอเป็นกันเอง, ชอบออกสังคม และมีความทะเยอทะยาน, มารุรู้สึกค่อนข้างดีที่ผู้มาใหม่ซึ่งต่ำต้อยเช่นตัวเอง… คุณสามารถชนะใจเธอได้มั้ย, หรือเธอจะลื่นผ่านมือของคุณและหายไปจากชีวิตของคุณตลอดไป?”ฤดูใบไม้ผลิฤดูใบไม้ผลิ มารุเป็นชาวบ้านที่อาศัยอยู่ในเมืองเพลิแกน เธอเป็นหนึ่งในสิบตัวละครที่สามารถแต่งงานได้เธออาศัยอยู่กับครอบครัวของเธอที่ทางทิศเหนือของเมือง อยู่ติดกับร้านช่างไม้ของโรบิน"),
        homeim(
            name: "Penny",
            image:
                "https://stardewvalleywikithai.com/wp-content/uploads/2016/03/Penny.png",
            detail:
                "วันเกิด:	Fall 2 อาศัยอยู่ใน:	Pelican Town ที่อยู่:	Trailer ครอบครัว: Pam(แม่) แต่งงาน:	แต่งได้ ของขวัญที่ชอบ: Red Plate,Tom Kha Soup,Roots Platter,Melon,Diamond,Sandfish,Poppy เพนนีอาศัยอยู่กับแพมแม่ของเธอ  ในรถบ้านเล็กๆริมแม่น้ำ  ขณะที่แม่ของเธอออกไปดื่มสุราที่ Saloon เธอต้องทำงานบ้านด้วยความท้อแท้ และในห้องที่แสนอุดอู้ของเธอถูกบังคับให้เรียกว่าบ้าน เธอเป็นคนขี้อายและเจียมเนื้อเจียมตัวโดยไม่มีความทะเยอทะยานในชีวิต ได้แต่หวังว่าสักวันหนึ่งจะปักหลักและสร้างครอบครัวของเธอเอง. เธอชอบทำอาหาร (ถึงแม้ว่าสกิลการทำอาหารของเธอจะมีปัญหาก็ตาม) และอ่านหนังสือแถวๆห้องสมุด”"),
      ]),
      homei(name: "เทศกาล", list: [
        homeim(
            name: "Egg Festival",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/thumb/2/20/Egg_Festival.png/500px-Egg_Festival.png",
            detail:
                "เทศกาลเก็บไข่ จัดขึ้นวันที่ 13th ของฤดูใบไม้ผลิ เวลา 9:00 am ที่ลานกว้างของเมือง Pelican ชาวบ้าน และ คุณ จะแข่งกันค้นหาไข่ ที่งานจะมี stuffed rabbit และ strawberry seeds ขายในราคา 100g  (ถ้าซื้อแล้วปลูกในปีแรกจะสามารถเก็บสตอเบอร์รี่ได้ 3 ครั้ง ) คุยกับนายอำเภอเพื่อเริ่มงาน คุณต้องเก็บไข่ให้ครบ 9 ใบไม่เช่นนั้น  Abigail จะเป็นผู้ชนะในการแข่งขันเมื่อเทศกาลจบลง คุณจะกลับมาอยู่ที่บ้านตอน 10 pm"),
        homeim(
            name: "Flower Festival",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/thumb/a/ad/Flower_Festival.jpg/500px-Flower_Festival.jpg",
            detail:
                "เทศการเต้นรำดอกไม้  จัดขึ้นวันที่ 24th ของฤดูใบไม้ผลิทุกปี งานเริ่ม 9:00 am ที่ป่าทิศใต้ของฟาร์มหรือทิศตะวันตกของเมือง Pelican town นั้นเอง (ถ้าใช้เส้นทางจากบ้าน ของ Haley). Pierre จะตั้งร้านขาย Dandelion, Daffodil, Tub o’Flowers และ  Rarecrow แบบสุ่มในงานคุณสามารถเต้นรำกับ กับคู่ที่คุณต้องการจีบได้ ถ้าคุณชวนให้เขามาเต้นด้วย แต่ว่าจะต้องทำความรู้จักกันในระดับหนึ่งก่อน คุณสามารถคุยกับชาวบ้านที่อยู่ในงานได้ แต่คนที่เราสามารถจีบได้คนอื่นๆคุยได้แค่ชวนเต้นเท่านั้น"),
        homeim(
            name: "Luau",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/thumb/a/af/Luau.png/500px-Luau.png",
            detail:
                "เทศการจัดขึ้นที่ชายหาดริมทะเล วันที่ 11th ในฤดูร้อน งานเริ่ม 9am ชาวบ้านในเมืองจะทำวัตถุดิบของแต่ละคน เพื่อทำซุปให้  Governor ได้กินเพื่อแสดงถึงความอุดมสมบูรณ์ของเมืองนำวัตถุดิบของคุณใส่ลงไปในหม้อ คุยกับนายอำเภอเพื่อเริ่มงาน Dance Of The Moonlight Jellies 28th ใทศการจัดขึ้นที่ชายหาดริมทะเลนฤดูร้อน งานเริ่ม 10pm คุยกับนายอำเภอเพื่อทำการปล่อยเรือ และชมความงามของแมงกระพรุนเรืองแสง"),
        homeim(
            name: "Dance Of The Moonlight Jellies",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/thumb/3/35/Dance_Of_The_Moonlight_Jellies.jpg/400px-Dance_Of_The_Moonlight_Jellies.jpg",
            detail:
                "ทศการจัดขึ้นที่ชายหาดริมทะเล 28th ในฤดูร้อน งานเริ่ม 10pm คุยกับนายอำเภอเพื่อทำการปล่อยเรือ และชมความงามของแมงกระพรุนเรืองแสง"),
        homeim(
            name: "Stardew Valley Fair",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/thumb/4/45/StardewValleyFair.png/500px-StardewValleyFair.png",
            detail:
                "เทศกาลจัดขึ้นที่ลานกว้างของเมือง Pelican วันที่ 16th ในฤดูใบไม้ร่วงทุกๆปี  งานเริ่ม 9am ในงานจะมีเกมต่างๆให้เลือกเล่นเพื่อนำ Star Tokensไป แลกของที่ร้านใกล้ๆทางเข้างานและยังมีงานประกวดผลผลิตของแต่ละคนในเมืองให้เรานำของดีในฟาร์มหรือที่สามารถหามาได้ 9 อย่างมาวางในบล๊อคที่สองเพื่อทำการแข่งขันกับ ชาวบ้าน 3 คน คือ  Marnie  ,Pierre  ,Willy  ผู้ชนะแต่ละอันดับจะได้รับ Star Tokens ที่แตกต่างกัน(ที่2 ได้ 500 Star Tokens ) คุยกับนายอำเภอเมื่อ ต้องการตัดสิน ด้านบนของงานจะมีเบอร์เกอร์ให้กินฟรี ดังนั้นก่อนเข้างานสามารถทำงานจนเหนื่อยแล้วมาฟื้นฟํจากการกินอาหารในงานนั้นเอง"),
        homeim(
            name: "Spirit’s Eve",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/thumb/a/a9/Spirits_Eve.png/500px-Spirits_Eve.png",
            detail:
                "เทศกาลงาน Spirit’s Eve จัดขึ้นที่ลานกว้างของเมือง Pelican วันที่ 27th ในฤดูใบไม้ร่วงทุกๆปี งานเริ่ม 10:00PMในงานจะมีโต๊ะอยู่หลายตัวซึ่งเต็มไปด้วยอาหารมากมาย ในงานจะมีเขาวงกต ซึ่งหากผ่านไปจุดหมายด้านในสุดได้จะได้รับ ฟักทองทองคำซึ่งในการจะไปถึงฟักทองทองคำได้นั้น จะต้องเดินลอดผ่านใต้พุ่มไม้ไปทางด้านซ้าย ที่มีป้ายเครื่องหมาย “?” และเดินเข้าไปในถ้ำแล้วเลี้ยวขวาแล้วเดินไปเรื่อยๆจะเจอทางออก"),
        homeim(
            name: "Festival Of Ice",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/thumb/f/fc/Festival_of_Ice_1.jpg/400px-Festival_of_Ice_1.jpg",
            detail:
                "เทศกาลน้ำแข็ง เริ่มเวลา 9 โมงเช้า วันที่ 8 ในฤดูหนาว ที่ป่าด้านล่างฟาร์มของเรา Cindersap Forest ภายในเทศกาลจะมีการแข่งขันตกปลาในบ่อน้ำแข็ง ถ้าจกได้ 5-6 ตัว ก็สามารถชนะในการแข่งขันนนี้ได้ เราจะตกแข่งกับ Pam, Willy, และ Elliott โดยของรางวัลจะเป็นหมวกกัปตัน Barbed Hook.png Barbed Hook, Dressed Spinner.png Dressed Spinner และ Magnet.pngMagnet. โดย Barbed Hook.png Barbed Hook จะช่วยให้ตกปลาง่ายขึ้น ในปีถัดไปของรางวัลจะเป็นเงิน 2000g"),
      ]),
      homei(name: "ข้อมูลปลา", list: [
        homeim(
            name: "Albacore",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/e/e1/Albacore.png",
            detail:
                "มักอยู่ที่ริมน้ำอุณภูมเย็นและร้อนมาบรรจบกัน ราคา:75g สถานที่:Ocean เวลา:6:00 AM – 11:00 ,AM 6:00 PM – 2:00 AM ฤดู:Fall,Winter สภาพอากาศ:Any ความยากและพฤติกรรม:60 mixed"),
        homeim(
            name: "Anchovy",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/7/79/Anchovy.png",
            detail:
                "ปลาเกล็ดเงินขนาดเล็ก ราคา:30g สถานที่:Ocean เวลา:Anytime ฤดู:Spring,Fall สภาพอากาศ:Any ความยากและพฤติกรรม:30 dart"),
        homeim(
            name: "Bream",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/8/82/Bream.png",
            detail:
                "ปลาน้ำจืดแสนธรรมดาออกมาตอนกลางคืน ราคา:45g สถานที่:River (Town+Forest) เวลา:6:00 PM – 2:00 AM ฤดู:All Seasons สภาพอากาศ:Any ความยากและพฤติกรรม:35 smooth"),
        homeim(
            name: "Bullhead",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/d/db/Bullhead.png",
            detail:
                "ญาติของปลาดุก(catfish) หากินตามพื้นทะเลสาบ ราคา:75g สถานที่:Mountain Lake เวลา:Anytime ฤดู:All Seasons สภาพอากาศ:Any ความยากและพฤติกรรม:46 smooth"),
        homeim(
            name: "Carp",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/a/a8/Carp.png",
            detail:
                "พบได้ในบ่อทั่วไป ราคา:30g สถานที่:Mountain Lake Sewers,Secret Woods Pond เวลา:Anytime ฤดู:All Seasons สภาพอากาศ:Any ความยากและพฤติกรรม:15 mixed"),
        homeim(
            name: "Catfish",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/9/99/Catfish.png",
            detail:
                "ปลาที่หาได้ยากในลำธาร ราคา:200g สถานที่:	River (Town+Forest),Secret Woods Pond,Witch’s Swamp เวลา:Anytime ฤดู:Spring,Fall,Summer in Secret Woods Pond สภาพอากาศ:Rain ความยากและพฤติกรรม:75 mixed"),
        homeim(
            name: "Chub",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/b/bd/Chub.png",
            detail:
                "ปลาน้ำจืดที่พบได้ทั่วไป เป็นที่รู้กันในเรื่องความหิวกระหายของมัน ราคา:50g สถานที่:River(Forest),Mountain Lake เวลา:Anytime ฤดู:All Seasons สภาพอากาศ:Any ความยากและพฤติกรรม:35 dart"),
      ]),
    ];

    return Scaffold(
        appBar: AppBar(
          leading: Container(),
          leadingWidth: 0,
          title: Text("SVdatabase"),
          actions: [
            IconButton(
                onPressed: () {
                  authController.sinOut();
                },
                icon: Icon(Icons.logout))
          ],
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text("Stardew Valley Database",
                      style: TextStyle(fontSize: 24)))),
          ...homeie.map((group) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(group.name),
                      ),
                      TextButton(
                          onPressed: () {
                            _toMorePage(group);
                          },
                          child: Text("ดูทั้งหมด"))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 120,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: group.list.length,
                        itemBuilder: (context, index) {
                          final item = group.list[index];
                          return InkWell(
                            onTap: () {
                              _toItemDetailPage(item);
                            },
                            child: Container(
                              width: 120,
                              margin: EdgeInsets.only(right: 5),
                              child:
                                  Image.network(item.image, fit: BoxFit.cover),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ))
        ]));
  }
}
