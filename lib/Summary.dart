
import 'package:flutter/widgets.dart';

main(){
  //1.变量
  var name = "kang";
  String name1 = "kang";

  final name2 = "kang";
  const String name3 = "kang";

  int a = 1;
  double b = 2.0;

  num v = a;
  num v1 = b;

  bool isTure = true;


  //list
  var list = [1,2,3];

  //编译时常量
  var constList = const[1,2,3];

  //map
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var _nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  var gifts1 = new Map(); // Map() new 可选
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  final constantMap = const {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
  var consMap = const{
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
  // constantMap = consMap; constantMap final
  // consMap = null; consMap can change

  //Function
  bool isNoble(int atomicNumber) {
    return _nobleGases[atomicNumber] != null;
  }

  isNoble1(int atomicNumber) {
    return _nobleGases[atomicNumber] != null;
  }

  bool isNoble2(int atomicNumber) => _nobleGases[atomicNumber] != null;

  //函数作为参数传递给另一个函数
  list.forEach(printElement);

  //你也可以为变量分配一个函数，例如:
  var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';

  //匿名函数
  //([[Type] param1[, …]]) {
  //  codeBlock;
  //};
  list.forEach((item) {
    print('${list.indexOf(item)}: $item');
  });

  list.forEach((item) => print('${list.indexOf(item)}: $item'));

  ///仅仅在b为空的情况下b被赋值value否则b的值不变
  b ??= 2.0;
  var isPublic = true;
  var visibility = isPublic ? 'public' : 'private';
  // expr1 ?? expr2 如果expr1是非空的，则返回其值;否则，计算并返回expr2的值。
  String playerName(String name) => name ?? 'Guest';

  //流程控制
//  var a1=1;
//  if(a1) { //条件必须使用布尔值，不允许其他值
//    print('yes');
//  }else{
//    print('error');
//  }

  var collection = [0, 1, 2];
  for (var x in collection) {
    print(x); // 0 1 2
  }

  list
      .where((c) => c >= 5)     //相当于过滤
      .forEach((c) => print(c));

  //continue语句和一个标签
  var command = 'CLOSED';
  switch (command) {
    case 'CLOSED':
      continue nowClosed;
  // Continues executing at the nowClosed label.

    nowClosed:
    case 'NOW_CLOSED':
    // Runs for both CLOSED and NOW_CLOSED.
      break;
  }

  //异常
  try{
    num a = 10/0.0;
    throw new FormatException("111111111");
  } on FormatException{
    print("222222");
  } catch(e){
    print(e);
  } finally{
    print("ok");
  }

  //泛型
  var names = <String>['Seth', 'Kathy', 'Lars'];
  var pages = <String, String>{
    'index.html': 'Homepage',
    'robots.txt': 'Hints for web robots',
    'humans.txt': 'We are people, not machines'
  };

  //Dart通用类型被具体化，这意味着它们在运行时携带它们的类型信息
  var names1 = List<String>();
  names.addAll(['Seth', 'Kathy', 'Lars']);
  print(names1 is List<String>); // true


}

//命名可选参数
/// Sets the [bold] and [hidden] flags ...
void enableFlags(String name,{bool bold=false, bool hidden,@required int age}) {}

//位置参数可选
String say(String from, String msg, [String device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}
void printElement(int element) {
  print(element);
}

//    初始化列表
//超类中的无参数构造函数
//main类中的无参数构造函数

//如果超类没有未命名的无参数构造函数，则必须手动调用超类中的一个构造函数。在冒号(:)之后，在构造函数体(如果有的话)之前指定超类构造函数。
class Person {
  String firstName;

  Person.fromJson(Map data) {
    print('in Person');
  }
}

class Employee extends Person {
  // Person does not have a default constructor;
  // you must call super.fromJson(data).
  Employee.fromJson(Map data) : super.fromJson(data) {
    print('in Employee');
  }
}

//初始化列表
class Point {
  num x, y;

  Point(this.x, this.y);

  // Named constructor
  Point.origin() {
    x = 0;
    y = 0;
  }
  // Initializer list sets instance variables before
  // the constructor body runs.
  Point.fromJson(Map<String, num> json)
      : x = json['x'],
        y = json['y'] {
    print('In Point.fromJson(): ($x, $y)');
  }

}
//抽象类 抽象方法
//如果您希望抽象类看起来是可实例化的，请定义一个工厂构造函数。
abstract class Doer {
  // Define instance variables and methods...

  void doSomething(); // Define an abstract method.
}

class EffectiveDoer extends Doer {
  void doSomething() {
    // Provide an implementation, so the method is not abstract here...
  }
}

abstract class SpecializedContainer extends Doer {
  // ...Define more constructors, fields, methods...

  void updateChildren() {
    // ...Implement updateChildren()...
  }

  // Abstract method causes a warning but
  // doesn't prevent instantiation.
  void doSomething();
}

//指定库前缀
//import 'package:lib1/lib1.dart';
//import 'package:lib2/lib2.dart' as lib2;
//// ...
//Element element1 = new Element();           // Uses Element from lib1.
//lib2.Element element2 = new lib2.Element(); // Uses Element from lib2.

//导入部分
// Import only foo.
//import 'package:lib1/lib1.dart' show foo;
//
//// Import all names EXCEPT foo.
//import 'package:lib2/lib2.dart' hide foo;

//延迟加载
//要延迟加载一个库，需要先使用 deferred as 来 导入：
//
//import 'package:deferred/hello.dart' deferred as hello;
//
//当需要使用的时候，使用库标识符调用 loadLibrary() 函数来加载库：
//
//greet() async {
//  await hello.loadLibrary();
//  hello.printGreeting();
//}