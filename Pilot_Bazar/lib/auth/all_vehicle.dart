import 'package:http/http.dart';
import 'package:pilot_bazar/model/vehicle_model.dart';

class AllVehicle{
  //final int index;

  //AllVehicle({required this.index});


  Future allVehicle(int index) async{ Response response =
              await get(Uri.parse("https://pilotbazar.com/api/vehicle"));
          print(response.statusCode);

          List<VehicleModel> vehicle = vehicleModelFromJson(response.body);
          print(vehicle[index].editionId);
          
  }
  }