class Authstate {}

final class AuthInitial extends Authstate {}

final class AuthSucess extends Authstate {
  String? sucess;
  AuthSucess(this.sucess);
}

final class AuthFailure extends Authstate {
  String? failure;
  AuthFailure({this.failure});
}

final class AuthLoading extends Authstate {}
