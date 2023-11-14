import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:pilot_bazar/auth/all_vehicle.dart';
import 'package:pilot_bazar/model/vehicle_model.dart';

class Item extends StatefulWidget {
  final int index;
  //final String name;
  final int id;
  final String slug;
  final String mileage;
  final String price;
  final String brandName;

  //final String name;
  Item({
    super.key,
    required this.index,
    //required this.name,
    required this.slug,
    required this.id,
    required this.mileage,
    required this.price,
    required this.brandName,
  });

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  //AllVehicle allVehicleobject = AllVehicle();
  @override

//static  String? name;
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      elevation: 7,
      child: ListTile(
        onTap: () async {
          Response response =
              await get(Uri.parse("https://pilotbazar.com/api/vehicle"));
          print(response.statusCode);

          List<VehicleModel> vehicle = vehicleModelFromJson(response.body);
          print(vehicle[widget.index].slug);
          print(vehicle[widget.index].brand.translate[0].title);
          
          //name=(vehicle[widget.index].slug);
          if (mounted) {
            setState(() {});
          }
        },
        contentPadding: EdgeInsets.all(20),
        tileColor: Color(0xFF313131),
        title: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            "https://pilotbazar.com/storage/vehicles/par3lGx3rWpTTK3qOcZ0sqv344k02maytivg7mtn.jpg",
            width: 200,
            height: 170,
            fit: BoxFit.cover,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 8,
            ),
            Text(
              widget.brandName,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            
            // Text(
            //   widget.slug.toString(),
            //   style: TextStyle(fontSize: 22, color: Colors.white),
            // ),
            SizedBox(
              height: 5,
            ),
            Text(widget.mileage,
                style: TextStyle(fontSize: 16, color: Colors.white)),
            SizedBox(
              height: 10,
            ),
            Text("Available At Showroom (PBL)",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    wordSpacing: 1,
                    letterSpacing: 0.5)),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  "TK. ",
                  style: TextStyle(fontSize: 19, color: Colors.white),
                ),
                Text(widget.price,
                    style: TextStyle(fontSize: 19, color: Colors.white))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
