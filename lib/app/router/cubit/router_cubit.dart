import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_login_training/app/router/cubit/router_state.dart';

class RouterCubit extends Cubit<RouterState> {
  RouterCubit() : super(const RouterStateLoginScreen());
}
