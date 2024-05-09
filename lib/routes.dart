import 'package:ecomercekhaled/core/constant/route.dart';
import 'package:ecomercekhaled/core/mymiddelwere.dart/middelwere.dart';
import 'package:ecomercekhaled/view/secreen/auth/login.dart';
import 'package:ecomercekhaled/view/secreen/auth/signup.dart';
import 'package:ecomercekhaled/view/secreen/cart.dart';
import 'package:ecomercekhaled/view/secreen/evaluation.dart';
import 'package:ecomercekhaled/view/secreen/homescreen.dart';
import 'package:ecomercekhaled/view/secreen/ecommerce.dart';
import 'package:ecomercekhaled/view/secreen/itemsecommerce.dart';
import 'package:ecomercekhaled/view/secreen/order.dart';
import 'package:ecomercekhaled/view/secreen/productdetailsecommers.dart';
import 'package:ecomercekhaled/view/secreen/profile.dart';
import 'package:ecomercekhaled/view/secreen/restaurants.dart';
import 'package:ecomercekhaled/view/secreen/notification.dart';
import 'package:ecomercekhaled/view/secreen/productdetailsresturant.dart';
import 'package:ecomercekhaled/view/secreen/itemsrestaurants.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const Login(), middlewares: [MyMidleWere()]),
  GetPage(name: AppRoute.homepage, page: () => const HomeScreen()),
  GetPage(name: AppRoute.signup, page: () => const SignUp()),
  GetPage(name: AppRoute.restusaunts, page: () => const Restusaunts()),
  GetPage(name: AppRoute.restaurantitems, page: () => const RestaurantItems()),
  GetPage(name: AppRoute.evaluation, page: () => const Evaluation()),
  GetPage(
      name: AppRoute.productdetailsrest, page: () => const ProductDetails()),
  GetPage(name: AppRoute.cart, page: () => const Cart()),
  GetPage(name: AppRoute.notification, page: () => const Notification()),
  GetPage(name: AppRoute.ecommerce, page: () => const Ecommerce()),
  GetPage(name: AppRoute.itemsecommerce, page: () => const ItemsEcommerce()),
  GetPage(
      name: AppRoute.productdetailsecommers,
      page: () => const ProductDetailsEcommers()),
  GetPage(name: AppRoute.profile, page: () => const Profile()),
  GetPage(name: AppRoute.order, page: () => const Order()),
];
