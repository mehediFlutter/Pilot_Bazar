import 'package:flutter/material.dart';
import 'package:pilot_bazar/auth/all_vehicle.dart';
import 'package:pilot_bazar/auth/login_screen.dart';
import 'package:pilot_bazar/model/vehicle_model.dart';
import 'package:pilot_bazar/widgets/iteam.dart';
import 'package:pilot_bazar/widgets/product.dart';
import 'package:pilot_bazar/widgets/search_bar.dart';
import 'package:pilot_bazar/widgets/user_profile_banner.dart';
import 'package:http/http.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  //AllVehicle allv=AllVehicle();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    itemShow();
    
  }

  static List<Product> list = [];
  static List<VehicleModel>? vehicle;
  

  @override
  void itemShow() async {
    {
      Response response =
          await get(Uri.parse("https://pilotbazar.com/api/vehicle"));
      print(response.statusCode);

      vehicle = vehicleModelFromJson(response.body);
      setState(() {});
      print(vehicle?[0].brand.translate[0].title);
      for (int i = 0; i < vehicle!.length; i++) {
        //  list.add(vehicle[i].brand.slug);
        list.add(Product(
            //name: vehicle[i].brand.translate[i].title,
            id: vehicle![i].brand.id,
            slue: vehicle![i].brand.slug,
            mileage: vehicle![i].mileage.slug,
            price: vehicle![i].price,
            brandName: vehicle![i].brand.translate[0].title));
        if (mounted) {
          setState(() {});
        }
        //print(vehicle[i].brand.slug);
      }
      //name=(vehicle[widget.index].slug);
      if (mounted) {
        setState(() {});
      }
    }
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF313131),
        body: SingleChildScrollView(
          primary: false,
          child: SingleChildScrollView(
            child: Column(
              children: [
                UserProfileBanner(),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Column(
                    children: [
                      Searchbar(),
                      SizedBox(
                        height: 4,
                      ),
                      //Item(index: index),
                      ListView.separated(
                        primary: false,
                        shrinkWrap: true,
                        itemCount: vehicle!.length,
                        itemBuilder: (context, index) {
                          return Item(
                            index: index,
                            slug: list[index].slue.toString(),
                            id: list[index].id,
                            // name: list[index].name,
                            // mileage: list[index].mileage,
                            mileage: vehicle![index].mileage.slug,
                            // price: list[index].price.toString(),
                            price: vehicle![index].price,
                            // Name of vehicle
                            brandName: vehicle![index].translate[0].title.toString(),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return Divider(
                            height: 4,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
            Response response =
                await get(Uri.parse("https://pilotbazar.com/api/vehicle"));
            print(response.statusCode);

            List<VehicleModel> Vehicle = vehicleModelFromJson(response.body);
            print(Vehicle.toString());
            print(Vehicle[1].brand.translate[1]);
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
