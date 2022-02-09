class Review{
  String uid;
  String name;
  String title;
  String description;

  Review({this.uid, this.name, this.title, this.description});

  Review.fromMap(Map<String,dynamic> data){
    uid=data['uid'];
    name=data['userName'];
    title=data['title'];
    description=data['description'];
  }

  Map<String,dynamic> toMap(){
    return{
      'uid': uid,
      'userName': name,
      "title": title,
      'description': description
    };
  }
}