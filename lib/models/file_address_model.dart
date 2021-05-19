

class FileAddress {

  final String name;
  final String address;

  FileAddress({
    this.name,
    this.address,
});

  factory FileAddress.fromJson(Map<String, dynamic> json){
    return FileAddress(
      name: json['name'] ?? "",
      address: json['address'] ?? "",
    );
  }

}