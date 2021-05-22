import 'package:learn_flutter/models/user_models.dart';

class UserService {
  // UserModel getUser() async {
  //   return UserModel(
  //     fname: "kessirin",
  //     lname: "muenwongsa",
  //   );
  // }
  Future<UserModel> getUser() async {
    // asyn await => use Future and set delay time
    return await Future.delayed(Duration(microseconds: 500), () {
      return UserModel(
        fname: "kessirin",
        lname: "muenwongsa",
      );
    });

    // UserModel user = await http.get();
    // return user
  }
}
