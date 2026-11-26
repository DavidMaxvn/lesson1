mixin CanRun {
  void run() {
    print("Động vật đang chạy!");
  }
}
mixin CanSwim {
  void swim() {
    print("Động vật đang bơi!");
  }
}
class Duck with CanRun, CanSwim{

}
void main(){
  Duck duck = Duck();
  duck.run();
  duck.swim();
}