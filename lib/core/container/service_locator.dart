import 'package:church_eden_mob/feature/auth/presentation/cubit/auth_cubit.dart';
import'package:get_it/get_it.dart';
final sl=GetIt.instance;
void setup(){
  //bloc
sl.registerFactory(()=>AuthCubit());

}