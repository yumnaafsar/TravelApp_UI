import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/models/activity_model.dart';
import 'package:travel_app/models/destination_model.dart';

class DestinationScreen extends StatefulWidget {
 

  final Destination destination;

  DestinationScreen({required this.destination});


  @override
  State<DestinationScreen> createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {


  Text _buildRatingStars(int rating){
    String stars='';
    for (int i=0; i< rating;i++)
    {
      stars +='⭐ ';
    }
    stars.trim(); 
    return Text(stars);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [BoxShadow(color: Colors.black, offset: Offset(0.0, 2.0), blurRadius: 6),
                  ],
                ),

                child: Hero(
                  tag: widget.destination.imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image(image: AssetImage(widget.destination.imageUrl),
                    fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: ()=>Navigator.pop(context), 
                    icon: Icon(Icons.arrow_back),
                    iconSize: 30.0,
                    color: Colors.black,
                    ),

                    Row(
                      children: [

                        IconButton(onPressed: ()=>Navigator.pop(context), 
                    icon: Icon(Icons.search),
                    iconSize: 30.0,
                    color: Colors.black,
                    ),

                    IconButton(onPressed: ()=>Navigator.pop(context), 
                    icon: Icon(FontAwesomeIcons.sortDown),
                    iconSize: 25.0,
                    color: Colors.black,
                    ),

                      ],
                    )


                  ],
                ),
              ),

              Positioned(
                left: 20,
                bottom: 20,
                child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(widget.destination.city, style: TextStyle(
                                          color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.w600, letterSpacing: 1.2
                                        ),),
                                        Row(
                                          children: [
                                            Icon(FontAwesomeIcons.locationArrow, size: 10.0, color: Colors.white,),
                                  
                                            SizedBox(width: 5,),
                                  
                                            Text(widget.destination.country, style: TextStyle(color: Colors.white70,
                                            fontSize: 20.0),),
                                          ],
                                        )
                                      ],
                                    ),
              ),

              Positioned(
                right: 20,
                bottom: 20,
                child:Icon(
                  Icons.location_on,
                  color: Colors.white70,
                  size: 25,
                ) )
            ],
          ),

          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10, bottom: 15),

              itemCount: widget.destination.activities.length,
              itemBuilder:(BuildContext context, int index){
                Activity activity= widget.destination.activities[index];
                return Stack(

                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(40, 5, 20, 5),
                      height: 170.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(100, 20, 20, 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Container(
                                  width: 120,
                                   child: Text(activity.name, style:TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600
                                   ),
                                   overflow: TextOverflow.ellipsis,
                                   maxLines: 2,
                                   ),
                                 ),
                                 Column(
                                   children: [
                                     Text('\$${activity.price}', style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600
                                     ),),
                      
                                     Text('per pax', style: TextStyle(
                                      color: Colors.grey,
                                     ),),
                                   ],
                                 ),
                              ],
                            ),
                            Text(activity.type,style: TextStyle(
                              color: Colors.grey,
                            ),),
                            _buildRatingStars(activity.rating),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  width: 70,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).secondaryHeaderColor,
                                  borderRadius: BorderRadius.circular(10),
                            
                                ),
                                alignment: Alignment.center,
                                child: Text(activity.startTimes[0]),
                                ),
                      
                                SizedBox(width: 10,),
                                 Container(
                                   padding: EdgeInsets.all(5),
                                  width: 70,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).secondaryHeaderColor,
                                  borderRadius: BorderRadius.circular(10),
                            
                                ),
                                alignment: Alignment.center,
                                child: Text(activity.startTimes[1]),
                                )
                              ],
                            )
                           
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 15,
                      bottom: 15,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          width: 110,
                          image: AssetImage(activity.imageUrl),
                          fit:BoxFit.cover ,),
                      ),
                    )
                  ],
                );
              }
              
               ),
          )
        ],
      ),
    );
  }
}