class Student {
  String _name = "Chưa có tên";
  int _age = 0;

  String get studentName => _name;

  set studentName(String newName) {
    _name = newName;
  }

  int get studentAge => _age;

  set studentAge(int newAge) {
    if (newAge >= 6 && newAge <=100) {
      _age = newAge;
    } else {
      print("Tuổi không hợp lệ");
    }
  }

}

void main(){
  Student student = Student();
  student.studentName = "Nguyễn Văn An";
  student.studentAge = 20;

  print("Tên: ${student.studentName}");
  print("Tuổi: ${student.studentAge}");
}