part of 'auth_cubit.dart';

enum AuthStatus { initial, loading, loaded, error }

class AuthState extends Equatable {
  final AuthStatus status;
  final User user;
  final Student student;
  final String error;

  AuthState({
    required this.status,
    required this.user,
    required this.student,
    required this.error,
  });

  factory AuthState.initial() => AuthState(
    status: AuthStatus.initial,
    user: User.initial(),
    student: Student.initial(),
    error: '',
  );

  AuthState copyWith({
    AuthStatus? status,
    User? user,
    Student? student,
    String? error,
  }) {
    return AuthState(
      status: status ?? this.status,
      user: user ?? this.user,
      student: student ?? this.student,
      error: error ?? this.error,
    );
  }

  @override
  List<Object> get props => [status, user, student, error];
}
