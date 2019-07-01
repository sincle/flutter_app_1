main(){
  new Man({});
}

class Point{

  int x , y;

  Point(this.x,this.y);

  Point.origin(){
      this.x = 0;
      this.y = 0;
  }

  Point.formJson(Map json):
        x = json["x"],
        y = json["y"]{
    print("");
  }

  Point.newJson(int x,int y):this(x,y);
}

class Person{
  Person(Map map){
    print("in person");
  }
}

class Man extends Person{
  Man(Map map):super(map){
    print("in Man");
  }
}

class Point1{
  final int x;
  final int y;

  const Point1(this.x,this.y);
}

class Logger {


  final String name;
  static final Map<String,Logger> _cache = new Map<String,Logger>();
  factory Logger(String name){

    if(_cache.containsKey(name)){
      return _cache[name];
    }else{
      final Logger logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._internal(this.name);
}
class Rectangle{
  num left,top,width,height;

  Rectangle();

  num get right {
    return left + width;
  }
  num get bottom => top + height;

  set right(num value){
    left = value - width;
  }

  set bottom(num value) => top = value - height;
}





















