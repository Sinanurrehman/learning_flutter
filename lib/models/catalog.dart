class CatalogModel {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  CatalogModel(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  static List<CatalogModel> items = [
    CatalogModel(
      id: 0001,
      name: "Iphone",
      desc: "Iphone 15 Pro Max",
      price: 1500,
      color: '',
      image:
          "https://newsnreleases.com/wp-content/uploads/2023/07/image-14044444.jpg",
    ),
    // CatalogModel(
    //   id: 0002,
    //   name: "Samsung 2",
    //   desc: "Samsung S22 Ultra",
    //   price: 250000,
    //   color: '',
    //   image:
    //       "https://m-cdn.phonearena.com/images/article/138252-wide-two_1200/New-rumor-suggests-Galaxy-S22-Ultra-camera-could-be-a-gamechanger.webp?1643902146",
    //
  ];
}
