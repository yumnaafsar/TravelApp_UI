import 'package:travel_app/models/activity_model.dart';

class Destination{
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
    required this.activities,
  });
}


List<Activity> activities=[
  Activity(imageUrl: 'assets/images/stmark-basilica.jpg', name: 'St. Mark\'s Basilica', type: 'Sightseeing Tour', startTimes: ['9:00 am', '11:00 am'], rating: 5, price: 30),

  Activity(imageUrl: 'assets/images/gondola-ride.jpg', name: 'Walking Tour and Gonadalo Ride', type: 'Sightseeing Tour', startTimes: ['11:00 am', '1:00 pm'], rating: 4, price: 210),

   Activity(imageUrl: 'assets/images/Murano.jpg', name: 'Murano and Burano Tour', type: 'Sightseeing Tour', startTimes: ['12:30 am', '2:00 pm'], rating: 3, price: 125),

];

List<Destination> destinations=[

  Destination(imageUrl: 'assets/images/venice.jpg', city: 'Venice', country: 'Italy', description: 'Visit Venice for an amazing and unforgatable adventure', activities: activities),

  Destination(imageUrl: 'assets/images/paris.jpg', city: 'Paris', country: 'France', description: 'Visit Paris for an unforgatable adventure', activities: activities),

  Destination(imageUrl: 'assets/images/abbottabad.jpg', city: 'Abbotatbad', country: 'Pakistan', description: 'Visit Abbottabad for an mesmerizing scenery', activities: activities),

  Destination(imageUrl: 'assets/images/saopaul.jpg', city: 'Sao Paulo', country: 'Brazil', description: 'Visit to enjoy and explore the beauty of nature', activities: activities),

  Destination(imageUrl: 'assets/images/switzerland.png', city: 'Switzerland', country: 'Europe', description: 'Visit to enjoy and explore the beauty of nature', activities: activities)
];