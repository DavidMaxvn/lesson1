enum AccountRole {
  admin,
  staff,
  customer
}

void main(){
  AccountRole role = AccountRole.staff;

  switch(role){
      case AccountRole.admin:
      print("Admin");
      break;

      case AccountRole.staff:
      print("Staff");
      break;

      case AccountRole.customer:
      print("Customer");
      break;
  }
}