// void main() {
//   Drinking roger = Coffee("北投", "羅成員", 3000);
//   print(roger.branding);
//   roger.mustKnow();
//   roger.drinkingInstruction();

//   Drinking roger2 = Tea("北投", "羅成員", 3000, '也愛揉成員');
//   print(roger2.branding);
//   roger2.mustKnow();
//   roger2.drinkingInstruction();
// }

// abstract class Drinking {
//   String origin;
//   String branding;
//   int price;

//   Drinking(this.origin, this.branding, this.price);

//   void mustKnow() {
//     print('產品若有瑕疵，可連絡消基會');
//   }

//   void drinkingInstruction();
// }

// class Coffee extends Drinking {
//   Coffee(String origin, String branding, int price)
//       : super(origin, branding, price);

//   @override
//   void drinkingInstruction() {
//     print('我愛揉成員');
//   }
// }

// class Tea extends Drinking {
//   String tarzan;
//   Tea(String origin, String branding, int price, this.tarzan)
//       : super(origin, branding, price);

//   @override
//   void drinkingInstruction() {
//     print('我愛泰山' + tarzan);
//   }

//   @override
//   void mustKnow() {
//     print('但泰山愛揉成員');
//   }
// }

//題目
//1
void main() {
  Animal dogdog = Dog("狗哥");
  dogdog.echo();
  Animal catmeat = Cat("最愛", "卡比肉");
  catmeat.echo();
}

abstract class Animal {
  String name;

  Animal(this.name);

  echo();
}

class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  echo() {
    print('汪' + name);
  }
}

class Cat extends Animal {
  String favorite;
  Cat(String name, this.favorite) : super(name);

  @override
  echo() {
    print('喵' + name + favorite);
  }
}
