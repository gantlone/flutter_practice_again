// void main() {
//   User user = User(9527, "羅成員", "roger9527", "roger9527@gmail.com");
//   print(user.id);
//   print(user.name);
//   print(user.username);
//   print(user.email);
//   user.printUserInfo();
// }

// class User {
//   int id;
//   String name;
//   String username;
//   String email;

//   //強制用戶必須輸入參數避免null
//   User(this.id, this.name, this.username, this.email);

//   void printUserInfo() {
//     print("用戶叫做$name，用戶的帳號為$username，用戶的id為$id，信箱為$email");
//   }
// }

void main() {
  Cat proMeow = Cat(87);
  proMeow.variety = 87;
  Cat proMeow2 = Cat(100);
  proMeow2.variety = 100;
  print(proMeow.weight);
  print(proMeow.variety);
  proMeow.echo();
  print(proMeow2.weight);
  print(proMeow2.variety);
}

class Cat {
  int weight;
  String _variety = '';
  String get variety {
    return _variety;
  }

  set variety(weight) {
    if (weight == 87) {
      _variety = "雜種";
    } else {
      _variety = "普通狗";
    }
  }

  //強制用戶必須輸入參數避免null
  Cat(this.weight);

  void echo() {
    print("哥哥您在狗叫些甚麼呢?");
  }
}
