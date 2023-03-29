class Hotel{
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
  });
}

final List<Hotel> hotels=[
  Hotel(imageUrl: 'assets/images/lutetia.jpg', name: 'Lutetia', address: 'Paris street 433', price: 300),

  Hotel(imageUrl:'assets/images/chedi.jpg', name: 'Chedi Andermatt', address: 'Switzerland street 101 ', price: 500),

  Hotel(imageUrl:'assets/images/pearlcontinental.jpg' , name: 'Pearl Continental', address: 'Clifton karachi ', price: 1000),
];