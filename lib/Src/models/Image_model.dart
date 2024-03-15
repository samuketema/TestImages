Class ImageModel{
  int id ;
  String title;
  String url;

  Imagemodel(this.id , this.url , this.title)

  ImageModel.fromJson(parsedJson){
    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];
  }
}