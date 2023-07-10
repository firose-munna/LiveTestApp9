
import 'package:flutter/material.dart';

class MainActivity extends StatefulWidget {
  const MainActivity({super.key});

  @override
  State<MainActivity> createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CRUD APP"),
        centerTitle: true,
        elevation: 6,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(Icons.add),
      ),

      body: ListView.separated(
        itemCount: 5,
        itemBuilder: (context, index){
          return ListTile(
            onLongPress: (){

            },
            leading: Image.network("hjhjdj", width: 50, errorBuilder: (_,__,___){
              return Icon(Icons.image, size: 32,);
            }),

            title: Text("Product Name"),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Product Code"),
                Text("Total Price"),
                Text("Available Units"),
              ],
            ),
            trailing: Text("Unit Price"),

          );
        },
        separatorBuilder: (context, index){
          return Divider(height: 0,);
        },),
    );
  }
}
