import 'dart:collection';
// Tạo lớp Student kế thừa LinkedListEntry<Student>
base class Student extends LinkedListEntry<Student> {
  String name;

  Student(this.name);
}
void main() {
//   Queue<String> customers = Queue<String>();
//   customers.add("An");
//   customers.add("Bình");
//   customers.add("Cường");
//
//   customers.addFirst("Dũng");
//   customers.addLast("Hà");
//
//   print(customers);
//
//   customers.removeFirst();
//   print(customers);
//   customers.removeLast();
//   print(customers);
  // customers.remove("Bình");
  // print(customers);

  // Theo tài liệu, HashMap có cách sử dụng và ý nghĩa giống Map.
  // Điểm đáng chú ý là HashMap sử dụng mã hash của key để so sánh và tìm kiếm phần tử.
  // Tài liệu cũng đề cập HashMap nhanh hơn khi dữ liệu key lớn.
  // HashMap<String, double> scores = HashMap<String, double>();
  //
  // scores["An"] = 8.5;
  // scores["Bình"] = 7.5;
  // scores["Cường"] = 9.0;
  //
  // print(scores);
  // print(scores["An"]);
  // scores["Bình"] = 8.0;
  // print(scores.containsKey("Dũng"));
  // print(scores);

  //Theo tài liệu, HashSet có cách sử dụng và ý nghĩa giống Set. Cơ chế so sánh sử dụng == thông qua giá trị hashCode.
  // HashSet<String> employeeIds = HashSet<String>();
  //
  // employeeIds.add("NV001");
  // employeeIds.add("NV002");
  // employeeIds.add("NV003");
  // employeeIds.add("NV001");
  //
  // print(employeeIds);
  // employeeIds.remove("NV002");
  // print(employeeIds.contains("NV003"));
  // print(employeeIds);


  // Theo tài liệu, LinkedList có ý nghĩa tương tự List, nhưng tổ chức dữ liệu theo dạng liên kết giữa các phần tử.
  // Tài liệu giới thiệu cấu trúc này để quản lý dữ liệu, đặc biệt khi cần chèn và xóa nhiều phần tử.

  LinkedList<Student> students = LinkedList<Student>();

  students.add(Student("An"));
  Student binh = Student("Bình");
  students.add(binh);
  students.add(Student("Cường"));

  print("Danh sách ban đầu:");
  students.forEach((student) {
    print(student.name);
  });

  students.remove(binh);

  print("Danh sách sau khi xóa:");
  students.forEach((student) {
    print(student.name);
  });
}