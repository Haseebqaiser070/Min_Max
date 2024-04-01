import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:mimax/App_Routes/Routes.dart';
import 'package:mimax/Presentation/HomeScreen/Controller/HomeScreenController.dart';
import 'package:mimax/Presentation/HomeScreen/HomeScreenWidgets/HomeScreenWidgets.dart';
import 'package:mimax/Utils/AppNavigationButtons/AppNavigationButtons.dart';
import 'package:mimax/Utils/AppStyles/AppStyles.dart';


class HomeScreen extends GetView<HomeScreenController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    List myCars = [
      {"name":"VW Caddy 2.0 TDI 4Motion Liberty","model":"CHF 52'900.","currentPrice": 40000,"images":["https://listing-images.autoscout24.ch/887/10959887/0.jpg?w=700&q=90","https://listing-images.autoscout24.ch/887/10959887/2.jpg?w=1920&q=90","https://listing-images.autoscout24.ch/887/10959887/4.jpg?w=1920&q=90","https://listing-images.autoscout24.ch/887/10959887/6.jpg?w=1920&q=90","https://listing-images.autoscout24.ch/887/10959887/9.jpg?w=1920&q=90"]},
      {"name":"BMW 420d SAG Cabrio M-Sport","model":"CHF 48'890.","currentPrice": 40000,"images":["https://listing-images.autoscout24.ch/75/10897075/1.jpg?w=1920&q=90","https://listing-images.autoscout24.ch/75/10897075/2.jpg?w=1920&q=90","https://listing-images.autoscout24.ch/75/10897075/0.jpg?w=1920&q=90","https://listing-images.autoscout24.ch/75/10897075/6.jpg?w=1920&q=90","https://listing-images.autoscout24.ch/75/10897075/15.jpg?w=1920&q=90"]},
    ];
    return SafeArea(
      child: Scaffold(
        key: controller.scaffoldKey,
        body: Column(
          children: [
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.centerLeft,
              child: circularMenuButton(context, () => {
                controller.scaffoldKey.currentState!.openDrawer()
              }),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Text("HomeScreentitle".tr,style: headingLarge(context),),
                      SizedBox(height: 10,),
                      Obx(() => CarouselSlider(
                        options: CarouselOptions(
                            height: 220.0,
                          reverse: true,
                          initialPage: 0,
                          autoPlay: true,
                          viewportFraction: 0.80,
                          enableInfiniteScroll: false

                        ),
                        items: myCars[controller.selectCarIndex.value]["images"].map<Widget>((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: CachedNetworkImage(
                                    imageUrl: i,
                                    placeholder: (context, url) => Center(
                                      child: LoadingAnimationWidget.discreteCircle(
                                        color: Colors.white,
                                        size: 50,
                                      ),
                                    ),
                                    errorWidget: (context, url, error) => Icon(Icons.error),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),),
                      // Container(
                      //   width: Get.width,
                      //   height: 120,
                      //   child: Stack(
                      //     alignment: Alignment.bottomCenter,
                      //     children: [
                      //       Padding(
                      //           padding: EdgeInsets.symmetric(horizontal: 20),
                      //           child: Image.asset("assets/images/homeScreencarstage.png",fit: BoxFit.contain,color: Theme.of(context).colorScheme.onBackground,)),
                      //       Image.asset("assets/images/homeScreencar.png",fit: BoxFit.contain,),
                      //     ],
                      //   ),
                      // ),
                      SizedBox(height: 20,),
                      Obx(() => Text(myCars[controller.selectCarIndex.value]["name"],style: headingLarge(context),)),
                      Obx(() => Text(myCars[controller.selectCarIndex.value]["model"],style: labelMediumThin(context),)),
                      GridView.count(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        padding: EdgeInsets.symmetric(vertical: 20),
                        children: [
                          homeScreenCard1(context, "HomeScreencurrentcarpricetxt".tr, "400000", "assets/icons/carIcon.png"),
                          homeScreenCard2(context,"REPAIR COST","12343","assets/icons/wranchSetting.png"),
                          Obx(() => controller.viewCarPrice.value?homeScreenCard1(context, "HomeScreennewcarpricetxt".tr, "400000", "assets/images/homeScreencar2.png"):homeScreenViewCard(context,(){controller.viewCarPrice.value = true;})),
                         homeScreenCard3(context, "HomeScreeninpectionchecktxt".tr, "4","1", "assets/images/homeScreenInspectionIcon.png",()=>{Get.toNamed(Routes.InspectionScreen)}),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Text("Details",style: headingLarge(context),),
                      homeScreenDetailWidget(context, "assets/icons/numberplate.png", "ZH 673 235"),
                      homeScreenDetailWidget(context, "assets/icons/brand.png", "Audi Audi RS6 Avant"),
                      homeScreenDetailWidget(context, "assets/icons/carside.png", "Personenwagen"),
                      homeScreenDetailWidget(context, "assets/icons/chassis.png", "WUA ZZZ F27 LN90 2231"),
                      homeScreenDetailWidget(context, "assets/icons/carbody.png", "Stationswagen"),
                      homeScreenDetailWidget(context, "assets/icons/color.png", "schwarz"),
                      Text("Other Details",style: titleMediumThick(context),),
                      homeScreenOtherDetailWidget(context,"Places","5","total"),
                      homeScreenOtherDetailWidget(context,"In Front","2",""),
                      homeScreenOtherDetailWidget(context,"Curb Weight,","**2309","kg"),
                      homeScreenOtherDetailWidget(context,"Master Number","223.559.128",""),
                      homeScreenOtherDetailWidget(context,"Approval Type","1AK7 32",""),
                      homeScreenOtherDetailWidget(context,"Displacement","3996","cm\u2083"),
                      homeScreenOtherDetailWidget(context,"Performance","441","kw"),
                      homeScreenOtherDetailWidget(context,"Curb weight","**",""),
                      homeScreenOtherDetailWidget(context,"Placing on the market","12.03.2020 GL",""),
                      homeScreenOtherDetailWidget(context,"Payload/fifth load","**431","kg"),
                      homeScreenOtherDetailWidget(context,"Total Weight","**2740","kg"),
                      homeScreenOtherDetailWidget(context,"Weight of the train","**","kg"),
                      homeScreenOtherDetailWidget(context,"Towing capacity","**2020","kg"),
                      homeScreenOtherDetailWidget(context,"Roof load","**90","kg"),
                      homeScreenOtherDetailWidget(context,"Minimission code:","B6d",""),

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Theme.of(context).colorScheme.background,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Text("HomeScreendrawertitle".tr,style: titleMediumThick(context),),
                SizedBox(height: 10,),
                Expanded(child: ListView.builder(
                    itemCount: myCars.length,
                    itemBuilder: (context,index){
                      return Obx(() => InkWell(
                        onTap: (){
                          controller.selectCarIndex.value = index;
                          controller.scaffoldKey.currentState!.closeDrawer();
                        },
                        child: controller.selectCarIndex.value==index?homeScreenmenuCard(context,myCars[index]['images'][0],myCars[index]['name'],myCars[index]['model'],true):homeScreenmenuCard(context,myCars[index]['images'][0],myCars[index]['name'],myCars[index]['model'],false),
                      ));
                    })),
                largeButton(context, "History", () => {Get.toNamed(Routes.HistoryScreen)}),
                SizedBox(height: 60,),
              ],
            ),
          ),
          ),
        ),
    );
  }
}