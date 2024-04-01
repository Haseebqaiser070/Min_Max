import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mimax/Utils/AppStyles/AppStyles.dart';

class VehicleForSaleCard1 extends StatefulWidget {
  VehicleForSaleCard1(
      {Key? key,
      required this.buildContext,
      required this.name,
      required this.model,
      required this.price,
      required this.condition,
      required this.repairDetail,
      required this.extraDetail,
      required this.contactFun})
      : super(key: key);
  BuildContext buildContext;
  String name;
  String model;
  String price;
  String condition;
  String repairDetail;
  Function()? extraDetail;
  Function()? contactFun;

  @override
  State<VehicleForSaleCard1> createState() => _VehicleForSaleCard1State();
}

class _VehicleForSaleCard1State extends State<VehicleForSaleCard1> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 5),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomRight:
                      isExpanded ? Radius.circular(0) : Radius.circular(20),
                  bottomLeft:
                      isExpanded ? Radius.circular(0) : Radius.circular(20),
                ),
                color: Theme.of(context).colorScheme.shadow),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        widget.name,
                        style: titleMediumThick(context),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        widget.model,
                        style: headingSmall(context),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/VehicleForSalecar.png",
                        fit: BoxFit.contain,
                        color: Theme.of(context).colorScheme.onBackground,
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Theme.of(widget.buildContext)
                                .colorScheme
                                .onPrimary),
                        alignment: Alignment.center,
                        child: Text(
                          widget.condition,
                          style: TextStyle(
                              color: Theme.of(widget.buildContext)
                                  .colorScheme
                                  .primary),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(widget.price, style: headingSmallBold(context))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.easeIn,
          height: isExpanded ? null : 0,
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 5),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: Theme.of(context).colorScheme.shadow),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.repairDetail,
                style: headingSmall(context),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Extra Information",
                    style: headingSmall(context),
                  ),
                  Text(
                    "Buyer Price",
                    style: headingSmall(context),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

Widget VehicleForSaleCard2(BuildContext context, String name, String model,
    String price, String condition, Function()? viewMoreFun) {
  return Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.shadow),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.onPrimary),
              alignment: Alignment.center,
              child: Text(
                condition,
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
            ),
          ],
        ),
        Image.asset(
          "assets/images/VehicleForSalecar.png",
          color: Theme.of(context).colorScheme.onBackground,
        ),
        Text(
          name,
          style: titleMediumThick(context),
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          model,
          overflow: TextOverflow.ellipsis,
          style: headingSmall(context),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                "\$${price}",
                overflow: TextOverflow.ellipsis,
                style: headingSmallBold(context),
              ),
            ),
            Text("View Contact",
                overflow: TextOverflow.ellipsis, style: headingSmall(context)),
          ],
        )
      ],
    ),
  );
}

Future showFilterSheet(BuildContext context) async {
  RxString dropdownvalue = "Both".obs;
  List<String> items = ["Winter","Summer","Both"];
  await showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          width: Get.width,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.shadow,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Add Filter",
                style: GoogleFonts.mulish(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).colorScheme.onBackground)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Rims Type"),
                  Obx(()=>DropdownButton(

                    // Initial Value
                    value: dropdownvalue.value,

                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),
                    style: headingSmall(context),
                    // Array list of items
                    items: items.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      dropdownvalue.value = newValue!;
                      print(dropdownvalue.value);
                    },
                  )),
                ],
              )
            ],
          ),
        );
      });
}
