import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:smart_education_institution_mobile/data/models/student.dart';

import '../../data/models/user.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState.initial());


}
