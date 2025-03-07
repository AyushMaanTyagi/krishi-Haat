class FarmerDetails{
final String email;
  final String pass;
  final String? pic;
  final String uid;
  final String name;
  final List? farmercroplist;

  FarmerDetails(this.email, this.pass, this.pic, this.uid, this.name, this.farmercroplist);

  Map<String, dynamic>getfarmerDetailsMap()
  {
    return {
      "name":name,
      "pic":pic,
      "email":email,
      "farmercroplist":farmercroplist,
      "pass":pass,
      "uid":uid,
    };
  }

}
class MerchantDetails {
  final String uid;
  final String email;
  final String photourl;
  final String name;
  final String address;
  final String password;

  MerchantDetails(this.uid, this.address, this.email, this.photourl,
      this.name, this.password,);

  Map<String, dynamic> getDetailsMap() {
    return {
      "uid": uid,
      "address": address,
      "email": email,
      "photoURL": photourl,
      "name": name,
      "password": password,
    };
  }
}