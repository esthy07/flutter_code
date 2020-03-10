class Utilisateur {
  int id;
  String name;

  Utilisateur(this.id, this.name);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'id': id,
      'name': name,
    };
    return map;
  }

  Utilisateur.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
  }
}