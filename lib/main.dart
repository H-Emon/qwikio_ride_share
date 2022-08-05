import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qwikio_ride_share/const/color.dart';
import 'package:qwikio_ride_share/screens/Car%20Rent/car_suv_details_screen.dart';
import 'package:qwikio_ride_share/screens/Car%20Rent/car_suv_screen.dart';
import 'package:qwikio_ride_share/screens/Car%20Rent/home_page.dart';
import 'package:qwikio_ride_share/screens/Drawer/Scheduled_rides.dart';
import 'package:qwikio_ride_share/screens/Drawer/Side%20Bar/slidebar_layout.dart';
import 'package:qwikio_ride_share/screens/Drawer/currency_and_language_select_screen.dart';
import 'package:qwikio_ride_share/screens/Drawer/edit_profile_screen.dart';
import 'package:qwikio_ride_share/screens/Drawer/payment_add_new_card_screen.dart';
import 'package:qwikio_ride_share/screens/Drawer/payment_methods_screen.dart';
import 'package:qwikio_ride_share/screens/Drawer/profile_view_screen.dart';
import 'package:qwikio_ride_share/screens/Drawer/rides_history.dart';
import 'package:qwikio_ride_share/screens/Fly/Flight%20Booking/confirm_flight.dart';
import 'package:qwikio_ride_share/screens/Fly/Flight%20Booking/flight_booking_screen.dart';
import 'package:qwikio_ride_share/screens/Fly/Flight%20Details%20screens/flight_details_screen.dart';
import 'package:qwikio_ride_share/screens/Fly/Flight%20Details%20screens/select_country_screen.dart';

import 'package:qwikio_ride_share/screens/Home%20Screen/home_page.dart';
import 'package:qwikio_ride_share/screens/Home%20Screen/main_home_page.dart';
import 'package:qwikio_ride_share/screens/Home%20Screen/pif_ride_page.dart';
import 'package:qwikio_ride_share/screens/Place/location_details_screen.dart';
import 'package:qwikio_ride_share/screens/Place/location_search_screen.dart';
import 'package:qwikio_ride_share/screens/Place/search_result_screen.dart';
import 'package:qwikio_ride_share/screens/Pormo%20Code/select_qwikoi_with_promocode.dart';
import 'package:qwikio_ride_share/screens/Ride/ride_details/car_on_way_screen.dart';
import 'package:qwikio_ride_share/screens/Ride/ride_details/finding_ride.dart';
import 'package:qwikio_ride_share/screens/Ride/ride_details/pickup_screen.dart';
import 'package:qwikio_ride_share/screens/Ride/ride_details/select_qwikio_screeen.dart';
import 'package:qwikio_ride_share/screens/Ride/search_locaton/pickup_location.dart';
import 'package:qwikio_ride_share/screens/Stay/discover_places.dart';
import 'package:qwikio_ride_share/screens/Stay/find_place_screen.dart';
import 'package:qwikio_ride_share/screens/Stay/luxury_resort_details_screen.dart';
import 'package:qwikio_ride_share/screens/Stay/place_filters_info_screen.dart';
import 'package:qwikio_ride_share/screens/Stay/resort_booking_screen.dart';
import 'package:qwikio_ride_share/widgets/Drawer/legal_info_screen.dart';
import 'package:qwikio_ride_share/widgets/Ride/Congratulations_alert.dart';
import 'package:qwikio_ride_share/widgets/Ride/pickUp_location.dart';
import 'package:qwikio_ride_share/widgets/Google%20Map/location.dart';
import 'package:qwikio_ride_share/screens/Staff%20pool%20Screen/staff_pool_main_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor:mainColor,
        textTheme:GoogleFonts.nunitoTextTheme(
            Theme.of(context).textTheme.apply()),
      ),
      home:

      CarSuvDetailsScreen()

      //CarSuvScreen()
      //CarRentHomePage()
      //BookingResortScreen()
      //LuxuryResortScreen()
      //FilterScreen()
      //FindPlaceScreen()
      //DiscoverPlaces()
      //LocationDetailsScreen()
      //SearchResultScreen()
      //LocationSearch()
      //ConfirmFlight()
      //FlightBooking()
      //PaymentConfirm()
      //PaymentDetails()
      //PaymentMethodsScreen()
      //FlightDetails()
      //CountrySelectionPage()
      //SidebarLayout()
      //ScheduledRides()
      //RidesHistory()
      //LegalInfo()
      //CurrencyAndLanguageScreen()
      //AddNewCardScreen()
      //PaymentMethods()
      //EditProfileScreen()
      //ProfileView()
      //MainHomePage()
      //SelectQwikioWithPromoCode(),
      //CongrsAlertWidgets()
      //CarOnWayScreen()
      //FindingRiderScreen()
      //SelectQwikio()
      //PickUpScreen()
      //PickUpLocation()
      //GooMapIntre()
      //SceondHomePage()
      //PifRidePage()
      //StaffPoolScreen(),
    );
  }
}

