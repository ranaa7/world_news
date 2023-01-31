import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:revision/news%20app/provider/sports_provider.dart';

class SportsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sports News'),
      ),
      body: Consumer<SportsProvider>(builder:(context,provider,child) {
        return ListView.builder(itemCount:provider.sportList.length,
          itemBuilder: (context, index) =>
              Card(
                elevation: 5,
                color: Colors.lightGreenAccent,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 250,

                          child: Image.network(provider.sportList[index].urltoimg??"https://www.salonlfc.com/wp-content/uploads/2018/01/image-not-found-scaled-1150x647.png",fit: BoxFit.fill,)),
                    ),
                    Directionality(
                        textDirection: TextDirection.rtl,
                        child: Expanded(
                          child: ListTile(
                            title: Text(
                                provider.sportList[index].title, style: TextStyle(color: Colors.black)),
                            subtitle: Text(
                               provider.sportList[index].des.toString(), style: TextStyle(color: Colors.black)),
                          ),
                        ))
                  ],
                ),
              ),

        );
      }
      ),
    );
  }
}
