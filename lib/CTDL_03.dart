// isEmpty - Thuộc tính kiểm tra xem mảng rỗng
// isNotEmpty - Thuộc tính kiểm tra xem mảng không rỗng
// length - Thuộc tính trả về số lượng phần tử mảng
// first - Thuộc tính trả về phần tử đầu tiên, tương đương với [0], lỗi nếu mảng rỗng
// last - Thuộc tính trả về phần tử đầu cuối

void main(){
  // List<String> subjects = ["Math", "English", "Programming"];
  //
  // print(subjects[0]);
  // print(subjects[subjects.length - 1]);

  // List<String> fruits = ["Apple", "Banana"];
  //
  // fruits.add("Orange");
  // print(fruits);
  // print(fruits.length);

  List<String> students = ["An", "Bình", "Cường", "Dũng", "Hà"];

  print(students.isEmpty);
  print(students.isNotEmpty);
  print(students.first);
  print(students.last);

  print("Danh sách ban đầu: ${students}");
  print(students.reversed);
  List<String> reversedStudents = students.reversed.toList();
  print("Danh sách sau khi đảo ngược: ${reversedStudents}");
  students.insert(2, "Lan");
  print(students);
  students.insertAll(1, ["Minh", "Nam"]);
  print(students);
  students.remove("Dũng");
  print(students);
  students.removeAt(0);
  print(students);
  students.removeLast();
  print(students);
  students.removeRange(1, 3);
  print(students);
}

// reversed - Trả về một đối tượng Iterable chứa các phần tử mảng theo thứ tứ ngược lại
// add() - Thêm một phần tử vào cuối add(element)
// insert() - Chèn một phần tử vào mảng ở vị trí i insert(i,element)
// insertAll() - Chèn một một Iterable bắt đầu từ vị trí i: insertAll(i,iterable)
// remove() - Xóa bỏ phần tử đầu tiền tìm thấy có giá trị chỉ ra remove(data)
// removeAt() - Xóa bỏ phần tử ở vị trí i removeAt(i)
// removeLast() - Xóa bỏ phần tử cuối
// removeRange() - Xóa bỏ phần tử từ vị trí start đến vị trí end removeRange(start, end)