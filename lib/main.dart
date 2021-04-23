import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tilo/auth/authService.dart';
import 'package:tilo/model/user_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tilo/provider/cart_provider.dart';
import 'package:tilo/screen/authenticate/log_in.dart';
import 'package:tilo/screen/authenticate/sign_up.dart';
import 'package:tilo/screen/cart/cart_screen.dart';
import 'package:tilo/screen/categories/baby_screen.dart';
import 'package:tilo/screen/categories/men_screen.dart';
import 'package:tilo/screen/categories/women_screen.dart';
import 'package:tilo/screen/complete/Complete.dart';
import 'package:tilo/screen/details_screen.dart';
import 'package:tilo/screen/gift/gift.dart';
import 'package:tilo/screen/home/home.dart';
import 'package:tilo/screen/profile/edit_user_profile.dart';
import 'package:tilo/screen/profile/user_profile.dart';
import 'package:tilo/screen/splash_screen.dart';
import 'package:tilo/screen/wishlist/wishlist.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider.value(
      value: CartProvider(),
    ),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserModel>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        /*
        * routes: {
          '/SignUpScreen':((context)=>SignUpScreen()),
          '/LoginScreen':((context)=>LoginScreen()),
          '/HomeScreen':((context)=>HomeScreen()),
          '/CartScreen':((context)=>CartScreen()),
          '/GiftScreen':((context)=>GiftScreen()),
          '/CompleteScreen':((context)=>CompleteScreen()),
          '/EditProfileScreen':((context)=>EditProfileScreen()),

        },*/
        routes: {
          '/SignUpScreen': ((context) => SignUpScreen()),
          '/LoginScreen': ((context) => LoginScreen()),
          '/HomeScreen': ((context) => HomeScreen()),
          '/menScreen': ((context) => MenScreen()),
          '/womenScreen': ((context) => WomenScreen()),
          '/babyScreen': ((context) => BabyScreen()),
          '/CartScreen':((context)=>CartScreen()),
          '/GiftScreen':((context)=>GiftScreen()),
          '/CompleteScreen':((context)=>CompleteScreen()),
          '/EditProfileScreen':((context)=>EditProfileScreen()),
          '/WishListScreen':((context)=>WishlistScreen()),
          '/ProfileScreen':((context)=>UserProfileScreen()),



        },
        home: HomeScreen(),
      ),
    );
  }
}
