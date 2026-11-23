void main(){
  // Map<String, dynamic> employee = {
  //   "name":"Nguyễn Văn An",
  //   "age":25,
  //   "department":"IT",
  //   "salary":15000000
  // };
  //
  // print(employee["name"]);
  // print(employee["age"]);
  // print(employee["department"]);
  // print(employee["salary"]);
  //
  // employee["email"] = "an@gmail.com";
  // employee["address"] = "TP. Hồ Chí Minh";
  // print(employee);
  //
  // print("Thông tin nhân viên: ");
  // employee.forEach((key, value) {
  //   print("$key : $value");
  // });
  // print("===================================================================");
  // print("Thông tin nhân viên: ");
  // for (var key in employee.keys) {
  //   print("$key : ${employee[key]}");
  // }

  Map<String, dynamic> employee = {
    "name": "Nguyễn Văn An",
    "age": 25,
    "department": "IT",
    "salary": 15000000
  };

  Map<String, dynamic> additionalInfo = {
    "email": "an@gmail.com",
    "address": "TP. Hồ Chí Minh"
  };

  employee.addAll(additionalInfo);
  print(employee);
  print(employee.containsKey("name"));
  print(employee.containsKey("phone"));
  employee.remove("salary");
  print(employee);
  employee.clear();
  print(employee);

  Set<String> students = {"An", "Bình", "Cường","Dũng", "An"};
  print(students);
  students.add("Hà");
  students.add("Bình");
  students.remove("Cường");
  print(students.contains("An"));
  print(students.contains("Minh"));
  print("Danh sách cuối cùng: ${students}");
}