import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_login_training/app/router/cubit/router_cubit.dart';
import 'package:social_login_training/app/router/cubit/router_state.dart';
import 'package:social_login_training/app/router/root_router_delegate.dart';

class AppRoot extends StatelessWidget {
  AppRoot({Key? key}) : super(key: key);

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RouterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child:  BlocBuilder<RouterCubit, RouterState>(builder: (context, state) {
            return Router(
              routerDelegate: RouterRootDelegate(
                navigatorKey,
                context.read<RouterCubit>(),
              ),
              backButtonDispatcher: RootBackButtonDispatcher(),
            );
          }),
        ),
      ),
    );
  }
}
