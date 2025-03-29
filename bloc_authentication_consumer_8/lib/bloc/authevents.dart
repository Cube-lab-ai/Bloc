class Authevents {}

final class AuthLogInRequested extends Authevents {
  String? username;
  String? passowrd;

  AuthLogInRequested(this.username, this.passowrd);
}
