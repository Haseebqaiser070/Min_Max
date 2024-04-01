import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mimax/Utils/AppNavigationButtons/AppNavigationButtons.dart';
import 'package:mimax/Utils/AppStyles/AppStyles.dart';
import '../Controller/NotificationsController.dart';
import '../NotificationWidget/NotificationWidget.dart';

class Notifications extends GetView<NotificationsController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                circularBackArrow(context, () => {Get.back()}),
                Text("Notification",
                style: titleMediumThick(context),),
                SizedBox(width: 30,)
              ],
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: [
                  notificationWidget(context, "5h ago", "assets/images/person.jpg", ("Hey, don't forget to verify my email"), "Lorem Ipsum is simply dummy text of the printing and typesetting industry.."),
                  notificationWidget(context, "5h ago", "assets/images/person.jpg", ("Hey, don't forget to verify my email"), "Lorem Ipsum is simply dummy text of the printing and typesetting industry.."),
                  notificationWidget(context, "5h ago", "assets/images/person.jpg", ("Hey, don't forget to verify my email"), "Lorem Ipsum is simply dummy text of the printing and typesetting industry.."),
                  notificationWidget(context, "5h ago", "assets/images/person.jpg", ("Hey, don't forget to verify my email"), "Lorem Ipsum is simply dummy text of the printing and typesetting industry.."),
                  notificationWidget(context, "5h ago", "assets/images/person.jpg", ("Hey, don't forget to verify my email"), "Lorem Ipsum is simply dummy text of the printing and typesetting industry.."),
                  notificationWidget(context, "5h ago", "assets/images/person.jpg", ("Hey, don't forget to verify my email"), "Lorem Ipsum is simply dummy text of the printing and typesetting industry.."),
                  notificationWidget(context, "5h ago", "assets/images/person.jpg", ("Hey, don't forget to verify my email"), "Lorem Ipsum is simply dummy text of the printing and typesetting industry.."),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}