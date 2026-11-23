void main() {
  int tuoi = 16;
  String ketQua = tuoi >= 18 ? "Đủ tuổi" : "Chưa đủ tuổi";
  print(ketQua);

  String? ten = null;
  String ketQua_2 = ten ?? "Khách";
  print(ketQua_2);

  int? diem = null;
  int diemThucTe = diem ?? 0;
  String ketQua_3 = diemThucTe >= 5 ? "Đậu" : "Rớt";
  print(ketQua_3);
}