import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mimax/Presentation/RootScreen/Controller/RootScreenController.dart';

class RootScreen extends GetView<RootScreenController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Obx(()=> Stack(
        alignment: Alignment.bottomCenter,
        children: [
          controller.pages[controller.currentPage.value],
          Container(
            margin: EdgeInsets.only(bottom: 20,left: 60,right: 60),
            height: 40,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.shadow,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                    onTap: (){
                      controller.currentPage.value = 0;
                    },
                    child: Icon(Icons.home,color: Theme.of(context).colorScheme.onBackground,)),
                InkWell(
                    onTap: (){
                      controller.currentPage.value = 1;
                    },
                    child: Icon(Icons.notifications_active_outlined,color: Theme.of(context).colorScheme.onBackground,)),
                InkWell(
                    onTap: (){
                      controller.currentPage.value = 2;
                    },
                    child: Icon(Icons.add,color: Theme.of(context).colorScheme.onBackground,)),
                InkWell(
                    onTap: (){
                      controller.currentPage.value = 3;
                    },
                  // child: Image.asset("assets/icons/setting.png",color: Theme.of(context).colorScheme.onBackground,width: 20,),
                    child: Icon(Icons.settings,color: Theme.of(context).colorScheme.onBackground,)
                ),
              ],
            ),
          ),
        ],
      )),
      // bottomNavigationBar: Container(
      //   margin: EdgeInsets.only(bottom: 50,left: 60,right: 60),
      //   height: 40,
      //   decoration: BoxDecoration(
      //       color: Theme.of(context).colorScheme.shadow,
      //       borderRadius: BorderRadius.circular(10)
      //
      //   ),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       InkWell(
      //           onTap: (){
      //             controller.currentPage.value = 0;
      //           },
      //           child: Icon(Icons.home,color: Theme.of(context).colorScheme.onBackground,)),
      //       InkWell(
      //           onTap: (){
      //             controller.currentPage.value = 1;
      //           },
      //           child: Icon(Icons.notifications_active_outlined,color: Theme.of(context).colorScheme.onBackground,)),
      //       InkWell(
      //           onTap: (){
      //             controller.currentPage.value = 2;
      //           },
      //           child: Icon(Icons.add,color: Theme.of(context).colorScheme.onBackground,)),
      //       InkWell(
      //           onTap: (){
      //             controller.currentPage.value = 3;
      //           },
      //           child: Icon(Icons.settings,color: Theme.of(context).colorScheme.onBackground,)),
      //     ],
      //   ),
      // ),
    );
  }
}