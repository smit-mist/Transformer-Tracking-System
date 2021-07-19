class AppUser {
  // Normal App User Nothing going on here
  // Just to make our life simpler.
  String uid,
      name,
      address,
      city,
      email,
      mobileNo,
      post,
      remark,
      state,
      empId,
      password;
  AppUser({
    this.uid,
    this.name,
    this.password,
    this.address,
    this.city,
    this.email,
    this.state,
    this.mobileNo,
    this.empId,
    this.post,
    this.remark,
  });
  void printUser() {
    print('Name $name');
    print('Emp ID $empId');
    print('Email $email');
    print('State $state');
    print('Pass $password');
    print('Mob $mobileNo');
    print('Post $post');
  }
}
