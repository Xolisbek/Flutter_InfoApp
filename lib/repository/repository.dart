import 'dart:math';

import 'package:info_app/model/place_data.dart';


class Repository {
  List<PlaceData> getData() {
    var list = [
      PlaceData(
          "Orol dengizi",
          "Qoraqalpog'iston",
          "assets/images/orol.png",
          "Orol dengizi – Oʻrta Osiyodagi eng katta berk koʻl. Maʼmuriy jihatdan Orol dengizining yarmidan koʻproq janubi-gʻarbiy qismi Oʻzbekiston, shimoli-sharqiy qismi Qozogʻiston hududida joylashgan",
          4.7),
      PlaceData(
          "Zomin",
          "Jizzax",
          "assets/images/zomin.png",
          "Zomin – Zomin tumanidagi shahar va tumannning maʼmuriy markazi. Viloyat markazi Jizzax shahridan 68 km. Zominsuv soyidan suv ichadi. Yaqin temir yoʻl stansiyasi Dashtobod (20 km).",
          4.9),
      PlaceData(
          "Bochka",
          "Toshkent",
          "assets/images/bochka.png",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus purus eu elementum vestibulum. In dictum metus quis risus sagittis, a sagittis neque maximus. Proin fermentum lacus a fermentum vulputate",
          4.5),
      PlaceData(
          "Chimyon",
          "Toshkent",
          "assets/images/chimyon.png",
          "Chimyon – Toshkent viloyati Boʻstonliq tumani Chimyon qishlogʻi yaqinidagi togʻ kurorti. Toshkent shahridan 90 km sharqda, Chatqol tizmasining etaklarida, Chimyonsoy vodiysida joylashgan. Dekabrdan martgacha togʻ changʻi majmuasi va kanatlar ishlaydi. Bahor, yoz va kuzda piyoda sayohat qilib turistik va alpinizm yoʻl koʻrsatuvchidan foydalanish mumkin.",
          5.0),
      PlaceData(
          "Samarqand",
          "Samarqand",
          "assets/images/samarqand.png",
          "Samarqand – Oʻzbekiston Respublikasi Samarqand viloyatidagi qadimiy shahar. Amir Temur ordeni sohibi[2]. Viloyatning maʼmuriy, iqtisodiy va madaniy markazi (1938-yildan). 1925-1930-yillarda Respublika poytaxti. Oʻzbekistonning janubi-gʻarbida, Zarafshon vodiysining markaziy qismida (Dargʻom va Siyob kanallari orasida) joylashgan. Oʻrtacha 695 m balandlikda.",
          4.8),
      PlaceData(
          "Xiva",
          "Xorazm",
          "assets/images/xiva.png",
          "Xiva – Oʻzbekistonning qadim shaharlaridan biri. Arxeologik maʼlumotlarga koʻra, shahar miloddan avval V asrda barpo etilgan. Uning nomi shaharning qadimiy qismida joylashgan Xivaq (Xeyvaq) qudugi bilan bogʻliq. Baʼzi tadqiqotchilar shahar nomini xorazmiy tiliga yaqin boʻlgan qadimgi osetin tilidagi „Xiauv“ – qalʼa soʻzidan, boshqalari bu atamani antik davrdan Xiva hududidan okib oʻtgan Xeykaniq (hozirgi Polvonyop) kanalining oʻzgartirilgan (Xeykaniq-Xeyvaniq-Xeyvaq-Xeva-Xiva) nomidan kelib chiqqan deydilar. Xorazmlik tarixchi solnomachi Xudoyberdi Qoʻshmuhammad oʻzining 1831-yilda yozgan „Dili Gʻaroyib“ asarida Xorazmning qadimiy shaharlarini nomma-nom sanar ekan, „Bu mamlakatning yana bir qalʼasi – Qalʼai Ramldir. Bu qalʼaga Som ibn Nuh asos solgan boʻlib, u hozirgi Xivaq nomi ila mashhurdir“ deydi. Xiva – Oʻzbekistonning qadim shaharlaridan biri. Arxeologik maʼlumotlarga koʻra, shahar miloddan avval V asrda barpo etilgan. Uning nomi shaharning qadimiy qismida joylashgan Xivaq (Xeyvaq) qudugi bilan bogʻliq. Baʼzi tadqiqotchilar shahar nomini xorazmiy tiliga yaqin boʻlgan qadimgi osetin tilidagi „Xiauv“ – qalʼa soʻzidan, boshqalari bu atamani antik davrdan Xiva hududidan okib oʻtgan Xeykaniq (hozirgi Polvonyop) kanalining oʻzgartirilgan (Xeykaniq-Xeyvaniq-Xeyvaq-Xeva-Xiva) nomidan kelib chiqqan deydilar. Xorazmlik tarixchi solnomachi Xudoyberdi Qoʻshmuhammad oʻzining 1831-yilda yozgan „Dili Gʻaroyib“ asarida Xorazmning qadimiy shaharlarini nomma-nom sanar ekan, „Bu mamlakatning yana bir qalʼasi – Qalʼai Ramldir. Bu qalʼaga Som ibn Nuh asos solgan boʻlib, u hozirgi Xivaq nomi ila mashhurdir“ deydi.",
          4.5),
      PlaceData(
          "Alyaska",
          "AQSH",
          "assets/images/alaska.png",
          "Alaska is the largest U.S. state by area, comprising more total area than the following three largest states of Texas, California, and Montana combined, and is the sixth-largest subnational division in the world. It is the third-least populous and most sparsely populated U.S. state, but is, with a population of 736,081 as of 2020, the continent's most populous territory located mostly north of the 60th parallel, with more than quadruple the combined populations of Northern Canada and Greenland.[6] The state contains the four largest cities in the United States by area, including the state capital of Juneau. The state's most populous city is Anchorage, and approximately half of Alaska's residents live within its metropolitan area.",
          4.3)
    ];

    list.shuffle(Random());
    return list;
  }
}