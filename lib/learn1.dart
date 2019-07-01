import 'package:flutter/material.dart';
main(){
    print("kang");
    var num1 = 2;
    printNum(num1);
    dynamic s = 3;
    printNum(s);
    int a;
    assert(a == null);
    num b = 2;
    int c = 3;
    double d =4;
    printNum(b);
    printNum(c);
    printNum(d);

    var e1 = "In a raw string, even \n isn't special.";
    var e2 = r"In a raw string, even \n isn't special.";
    print(e1);
    print(e2);

    var constantList = const [1, 2, 3];
    var conset = constantList;
    print(conset);

    var clapping = '\u{1f44f}';
    print(clapping);
    print(clapping.codeUnits);
    print(clapping.runes.toList());

    Runes input = new Runes(
        '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
    print(new String.fromCharCodes(input));

    var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
    print(halogens);

    enableFlags(bold:true,hidden:true,name: "kang");
    enableFlags(bold:true,name: "kang");


    say("2","3","1");
    say("2","3");

    var list = const[1,2,3];
    var list1 = [2,3,4];
    list.forEach(printNum);
    Function add3 = makeAdder(3);

}
Function makeAdder1(num addBy) {
    return (num i) => addBy + i;
}
Function makeAdder(num addBy) {
    return (num i,num j) => addBy + i + j;
}

String say(String from, String msg, [String device]) {
    var result = '$from says $msg';
    if (device != null) {
        result = '$result with a $device';
    }
    return result;
}
void enableFlags({bool bold, bool hidden,@required String name}) {

}
printNum(num n){
  print("this is $n ");
}