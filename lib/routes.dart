import 'package:ecomercekhaled/core/constant/route.dart';
import 'package:ecomercekhaled/core/mymiddelwere.dart/middelwere.dart';
import 'package:ecomercekhaled/view/secreen/abouttheapp.dart';
import 'package:ecomercekhaled/view/secreen/auth/forgetpassword.dart';
import 'package:ecomercekhaled/view/secreen/auth/login.dart';
import 'package:ecomercekhaled/view/secreen/auth/resertpassord.dart';
import 'package:ecomercekhaled/view/secreen/auth/signup.dart';
import 'package:ecomercekhaled/view/secreen/auth/sucessresertpassword.dart';
import 'package:ecomercekhaled/view/secreen/auth/sucesssignup.dart';
import 'package:ecomercekhaled/view/secreen/auth/verfiycpdesignup.dart';
import 'package:ecomercekhaled/view/secreen/auth/veritycode.dart';
import 'package:ecomercekhaled/view/secreen/cart.dart';
import 'package:ecomercekhaled/view/secreen/evaluation.dart';
import 'package:ecomercekhaled/view/secreen/homescreen.dart';
import 'package:ecomercekhaled/view/secreen/ecommerce.dart';
import 'package:ecomercekhaled/view/secreen/itemsecommerce.dart';
import 'package:ecomercekhaled/view/secreen/location.dart';
import 'package:ecomercekhaled/view/secreen/order.dart';
import 'package:ecomercekhaled/view/secreen/productdetailsecommers.dart';
import 'package:ecomercekhaled/view/secreen/profile.dart';
import 'package:ecomercekhaled/view/secreen/restaurants.dart';
import 'package:ecomercekhaled/view/secreen/notification.dart';
import 'package:ecomercekhaled/view/secreen/productdetailsresturant.dart';
import 'package:ecomercekhaled/view/secreen/itemsrestaurants.dart';
import 'package:ecomercekhaled/view/secreen/yourstrorsettings.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const Login(), middlewares: [MyMidleWere()]),
  GetPage(name: AppRoute.homepage, page: () => const HomeScreen()),
  GetPage(name: AppRoute.signup, page: () => const SignUp()),
  GetPage(name: AppRoute.restusaunts, page: () => const Restusaunts()),
  GetPage(name: AppRoute.restaurantitems, page: () => const RestaurantItems()),
  GetPage(name: AppRoute.evaluation, page: () => const Evaluation()),
  GetPage(name: AppRoute.cart, page: () => const Cart()),
  GetPage(name: AppRoute.notification, page: () => const Notification()),
  GetPage(name: AppRoute.ecommerce, page: () => const Ecommerce()),
  GetPage(name: AppRoute.itemsecommerce, page: () => const ItemsEcommerce()),
  GetPage(
      name: AppRoute.productdetailsrest, page: () => const ProductDetails()),
  GetPage(
      name: AppRoute.productdetailsecommers,
      page: () => const ProductDetailsEcommers()),
  GetPage(
      name: AppRoute.sucessResertPassword,
      page: () => const Sucessresertpassword()),
  GetPage(name: AppRoute.order, page: () => const Order()),
  GetPage(name: AppRoute.yourStore, page: () => const YourStoreSettings()),

  //=================== auth =================================
  GetPage(name: AppRoute.forgetpassword, page: () => const Forgetpassword()),
  GetPage(name: AppRoute.resertpassword, page: () => const Rsertpassword()),
  GetPage(name: AppRoute.veriflycode, page: () => const Veriflycode()),
  GetPage(name: AppRoute.sucessSignUp, page: () => const SucessSignUp()),
  GetPage(
      name: AppRoute.veriflycodeSignup, page: () => const VeriflycodeSignUp()),

  //=================== settings =================================

  GetPage(name: AppRoute.abouttheapp, page: () => const AboutTheApp()),
  GetPage(name: AppRoute.location, page: () => const Location()),
  GetPage(name: AppRoute.profile, page: () => const Profile()),
];
