import 'package:flutter/material.dart';
import 'package:fluttercourse/utils/data_service.dart';
import 'package:go_router/go_router.dart';

class FutureDataPage extends StatefulWidget {
  const FutureDataPage({super.key});

  @override
  State<FutureDataPage> createState() => _FutureDataPageState();
}

class _FutureDataPageState extends State<FutureDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            context.replaceNamed('home_page');
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "Future Data Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10),

        // FUTURE BUILDER FUNCTION
        child: FutureBuilder(
          future: getStringData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }

            if (snapshot.hasError) {
              return Text("server Error. Try Again");
            }

            List<dynamic> data = snapshot.data ?? [];
            if (data.length > 0) {
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  // VARIABLES
                  String title = data[index]['name']['title'];
                  String firstName = data[index]['name']['first'];
                  String lastName = data[index]['name']['last'];
                  String picture = data[index]['picture']['medium'];
                  String email = data[index]['email'];
                  // RETURNS
                  return ListTile(
                    onTap: () {
                      context.pushNamed('profile_page', extra: {
                        "profileData": data[index],
                      });
                    },
                    title: Text("$title $firstName $lastName"),
                    subtitle: Text("$email"),
                    leading: ClipOval(
                      child: Image.network(picture),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward,
                    ),
                  );
                },
              );
            } else {
              return Text("No data Found");
            }
          },
        ),
      ),
    );
  }
}
