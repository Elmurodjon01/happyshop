import 'package:hive/hive.dart';

import '../model/userModel/accountModel.dart';

class HiveDB {
  var box = Hive.box('personalInfo');

  void storeAccount(Account account) {
    box.put('account', account.toJson());
  }

  Account loadAccount() {
    var account = Account.fromJson(box.get('account'));
    return account;
  }

  void removeAccount() {
    box.delete('account');
  }
}
