main(){

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

  print("kang");
}