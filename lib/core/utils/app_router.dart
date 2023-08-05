import 'package:e_commerce/features/Auth/presentation/views/auth_view.dart';
import 'package:e_commerce/features/home/presentation/views/all_product_view.dart';
import 'package:e_commerce/features/home/presentation/views/details_view.dart';
import 'package:e_commerce/features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/cart/presentation/views/cart_view.dart';
import '../../features/slpash/presentation/views/slpash_view.dart';

abstract class AppRouter {
  static const kAuthView="/authView";
  static const kHomeView="/homeView";
  static const kAllProductView="/allProductView";
  static const kDetailsView="/DetailsView";
  static const kCartView="/cartView";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder:(context, state) => const SplashView(),
      ),
      GoRoute(
        path: kAuthView,
        builder:(context, state) => const AuthView(),
      ),
      GoRoute(
        path: kHomeView,
        builder:(context, state) => const HomeView(),
      ),
      GoRoute(
        path: kAllProductView,
        builder:(context, state) => const AllProductView(),
      ),
      GoRoute(
        path: kDetailsView,
        builder:(context, state) => const DetailsView(),
      ),
      GoRoute(
        path: kCartView,
        builder:(context, state) => const CartView(),
      ),
    ],
  );
}
