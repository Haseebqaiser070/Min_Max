import 'dart:ui';

import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/internacionalization.dart';
import 'package:get_storage/get_storage.dart';

class LanguageController extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {

    //UK English
    'en_GB': {
      //LandingScreen1
      'wellcometxt': 'Welcome to',
      'ls1txt': "Your all-in-one platform for effortless car inspection Get started by snapping a photo of your car's ID card to begin.",
      //LandingScreen2
      'ls2Introtxt': "Introduction To",
      'ls2Futuretxt': "Future",
      'ls2txt': "Your all-in-one platform for effortless car trading. Find, sell, and manage vehicles with ease. Get started by snapping a photo of your car's ID card to begin.",

      //LandingScreen3
      'ls2Discovetxt': "Discover Seamless",
      'ls2Featuretxt': "Features",
      'ls3txt': "Our app automates data input by scanning your car's ID. Track purchase and selling prices, repair costs, and even the upcoming inspection schedule, making car management a breeze.",

      //LoginOption
      'loginOptxt': "PLEASE CHOOSE FROM THE FOLLOWING",
      'scanBtntxt': "SCAN CARD",

      // Buttons
      'nextButtontxt': "Next",
      'loginBtntxt': "LOGIN",
      'confirmBtntxt': "CONFIRM",

      //LoginScreen
      'loginScreentitle': "Please Login",
      'loginScreenEmailtxtfieldtitle': "Number or Email",
      'loginScreenPasswordtxtfieldtitle': "Password",
      'loginScreenNoteTxt': "PLEASE ENTER REQUIRED CREDENTIALS",

      //SettingScreen
      'seetingscreensettingtitle': "Setting",
      'settingScreenlanguage': 'Language',
      'settingScreenTheme': 'Color Theme',

      //HomeScreen
      'HomeScreentitle': 'Your current\nvehicle',
      'HomeScreennewcarpricetxt': 'NEW\nCAR PRICE',
      'HomeScreencurrentcarpricetxt': 'CURRENT\nCAR PRICE',
      'HomeScreeninpectionchecktxt': 'INSPECTION\NCHECK',
      'HomeScreendrawertitle': 'Your Vehicles',

      //VehicleDetail
      'vehicleDetaildetailtitle': 'Details',
      'vehicleDetailcontacttxt': 'Contact',


      //VehicleForSale
      'vehicleforsaletitle': "Cars Up For\nSale/Trade",
      'vehicleforsaleforsaletxt': 'For sale',
      'vehicleforsalefortradetxt': 'For trade',

      //VehicleSale
      'vehiclesaletitle': 'Add Your Car for Sale/Trade',
      'vehiclesaleforsaletxt': 'For sale',
      'vehiclesalefortradetxt': 'For trade',
      'vehiclesaleuploadimages': 'UPLOAD IMAGES',
      'vehiclesaledetailhinttxt': 'Enter Details',

      //VehicleRepairDetail
      'vehiclerepairdetailtitle': 'Add Repair Details',
      'vehiclerepairdetailuploadimages': 'UPLOAD IMAGES',
      'vehiclerepairdetailhinttxt': 'Enter Details',

      //QRScanScreen
      'QRScanScreentitleScan': 'Scan',
      'QRScanScreentitleyourcard': 'Your Card',
      'QRScanScreentitletxt': 'Please Scan Your Card',
      'QRScanScreentitletxticon': 'Scan the\nCard',

    },




    //German
    'de_DE': {
      //LandingScreen1
      'wellcometxt': 'Willkommen zu',
      'ls1txt': "Ihre All-in-One-Plattform für die mühelose Fahrzeuginspektion. Machen Sie zunächst ein Foto vom Personalausweis Ihres Autos.",

      //LandingScreen2
      'ls2Introtxt': "Einführung zu",
      'ls2Futuretxt': "Zukunft",
      'ls2txt': "Ihre All-in-One-Plattform für den mühelosen Autohandel. Finden, verkaufen und verwalten Sie Fahrzeuge ganz einfach. Machen Sie zunächst ein Foto vom Personalausweis Ihres Autos.",

      //LandingScreen3
      'ls2Discovetxt': "Entdecken Sie Seamless",
      'ls2Featuretxt': "Merkmale",
      'ls3txt': "Unsere App automatisiert die Dateneingabe durch Scannen des Ausweises Ihres Autos. Verfolgen Sie Kauf- und Verkaufspreise, Reparaturkosten und sogar den bevorstehenden Inspektionsplan und machen Sie so die Fahrzeugverwaltung zum Kinderspiel.",

      //LoginOption
      'loginOptxt': "BITTE WÄHLEN SIE AUS FOLGENDEM",
      'scanBtntxt': "ESCANEAR TARJETA",



      // Buttons
      'nextButtontxt': "Nächste",
      'loginBtntxt': "ANMELDUNG",
      'confirmBtntxt': "Bestatigen",

      //LoginScreen
      'loginScreentitle': "Bitte loggen Sie sich ein",
      'loginScreenEmailtxtfieldtitle': "Nummer oder E-Mail",
      'loginScreenPasswordtxtfieldtitle': "Passwort",
      'loginScreenNoteTxt': "BITTE GEBEN SIE DIE ERFORDERLICHEN ANMELDUNGSDATEN EIN",


      //SettingScreen
      'seetingscreensettingtitle': "Rahmen",
      'settingScreenlanguage': 'Sprachen',
      'settingScreenTheme': 'Farbthema',

      //HomeScreen
      'HomeScreentitle': 'Lhr Aktuelles\nFahrzeug',
      'HomeScreennewcarpricetxt': 'NEU\nAUTOPREIS',
      'HomeScreencurrentcarpricetxt': 'AKTUELLER\nAUTOPREIS',
      'HomeScreeninpectionchecktxt': 'INSPEKTION\nSKONTROLLE',
      'HomeScreendrawertitle': 'Ihre Fahrzeuge',

      //VehicleDetail
      'vehicleDetaildetailtitle': 'Nahere',
      'vehicleDetailcontacttxt': 'Kontakt',

      //VehicleForSale
      'vehicleforsaletitle': "Autos bereit fur\nVerkauf/Tausch",
      'vehicleforsaleforsaletxt': 'Zu verkauf',
      'vehicleforsalefortradetxt': 'Zu Tausch',

      //VehicleSale
      'vehiclesaletitle': 'Fugen Sie lhr Auto zum Verkauf/Tausch',
      'vehiclesaleforsaletxt': 'Zu verdauf',
      'vehiclesalefortradetxt': 'Zu Tausch',
      'vehiclesaleuploadimages': 'Bilder hochladen',
      'vehiclesaledetailhinttxt': 'Geben Sie Details ein',

      //VehicleRepairDetail
      'vehiclerepairdetailtitle': 'Reparaturdetails hinzufugen',
      'vehiclerepairdetailuploadimages': 'Bilder hochladen',
      'vehiclerepairdetailhinttxt': 'Geben Sie Details ein',

      //QRScanScreen
      'QRScanScreentitleScan': 'Scannen',
      'QRScanScreentitleyourcard': 'Deine Karte',
      'QRScanScreentitletxt': 'Bitte scannen Sie Ihre Karte',
      'QRScanScreentitletxticon': 'Scannen Sie\ndie Karte',
    }
  };


  changeAppLanguage(String language)async{
    if(language == "English"){
      Get.updateLocale(Locale('en', 'Gb'));
      await GetStorage().write('language', "English");
    }
    if(language == "German"){
      Get.updateLocale(Locale('de', 'DE'));
      await GetStorage().write('language', "German");
    }
  }

}