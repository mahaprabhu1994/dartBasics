class employee {
  String _name;
  int age;

  employee(this._name, this.age);

  void welcomeMsg(name) {
    print("hi $name , welcome to our company ");
  }

  void empStatus(bool status) {
    if (status)
      print(" this is called inside employee class : $_name is active");
    else
      print("$_name is not active");
  }
}
