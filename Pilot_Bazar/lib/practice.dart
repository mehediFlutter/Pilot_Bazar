//  import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart';

// class NewsData with ChangeNotifier 
// {

//   Map<String,dynamic> _map = {};
//   bool _error = false;
//   String _errorMessage = '';

//   Map<String,dynamic> get map => _map;
//   bool get error => _error;
//   String get errorMessage => _errorMessage;

//   Future<void> get fetchdata async {
//     final response = await get(Uri.parse('https://script.google.com/macros/s/AKfycbz3ZmaMiTgR-y70MEE1v9VPz2QtmNzwnnnnnnn/exec'),);
//    if (response.statusCode == 200)
//     {
//     try
//      {
//        _map = jsonDecode(response.body);
//        _error = false;
//      }
//      catch(e) {
//        _error = true;
//        _errorMessage = e.toString();
//        _map = {};
//      }
//    }
//    else
//    {
//     _error = true; 
//     _errorMessage = 'Error :it could be your internet connection ';
//        _map = {};
//    }
//     notifyListeners();
//   }
//   void initialValues()
//   {
//     _map = {};
//     _error = false;
//     _errorMessage = '';
//      notifyListeners();
//   }
// }


// // stories.dart;

// class Storiespage extends StatelessWidget {
//   const Storiespage({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     //context.read<NewsData>().fetchdata;
//     return Scaffold(
//      appBar: AppBar(
//        actions: [
//          IconButton(
//            icon: Icon(Icons.refresh),
//            onPressed:() {
//              context.read<NewsData>().initialValues();
//               context.read<NewsData>().fetchdata;
//            },
//          )
//        ],
//        title: Text('ggg'),
//      ),
//      body: RefreshIndicator(
//        onRefresh: () async {
//         await context.read<NewsData>().fetchdata;
//        },
//        child: Center(
//         child: Consumer<NewsData>(
//         builder: (context, value, child) {
//           return value.map.length == 0 && !value.error 
//           ? CircularProgressIndicator() 
//           : value.error ? Text('oops,something went wrong ${value.errorMessage}'
//           ,textAlign: TextAlign.center,) : 
//           ListView.builder(
//             itemCount: value.map['feedback'].length,
//             itemBuilder: (context,index) {
            
            
//             return Newscard(map: value.map['feedback'][index]);
//           },
//           );
//         },
//         ),
//        ),
//      ), 
//     );
//   }
// }

// class Newscard extends StatelessWidget {
//   const Newscard({ Key? key,required this.map }) : super(key: key);
// final Map<String,dynamic> map;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Card(
//         elevation:10 ,
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Image.network('${map['image']}'),
//             SizedBox(
//               height: 10,
//             ),
//             Text('${map['heading']}'
//             ),
//            SizedBox(
//               height: 10,
//             ),
//               Text('${map['story']}'
//             ),
//             ],
            
//           ),
//         ),
//       ),
//     );
//   }
// }