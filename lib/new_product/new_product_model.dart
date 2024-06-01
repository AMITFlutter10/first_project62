class NewProduct{
  String image;
  String title;
  bool favorite ;

  NewProduct({
    required this.image,
    required this.title,
    required this.favorite,
  });
}
// dummy data
List<NewProduct> newProductList =[
  NewProduct(image: "assets/images/pic1.jpg", title: "NewProduct1", favorite: true),
  NewProduct(image: "assets/images/pic3.jpeg", title: "NewProduct2", favorite: true),
  NewProduct(image: "assets/images/pic3.jpeg", title: "NewProduct3", favorite: true),

];
