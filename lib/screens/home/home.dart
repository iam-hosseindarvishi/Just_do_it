import 'package:flutter/material.dart';
import 'package:just_do_it/models/task.dart';
import 'package:just_do_it/screens/tasks/task.dart';

import '../widgets/app_bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomeAppBar(
        title: "صفحه اصلی",
      ),
      body: ListView.builder(
        itemCount: demoTask.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TaskScreen(
                    task: demoTask[index],
                  ),
                )),
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                color: Colors.grey[300],
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      demoTask[index].id.toString(),
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      demoTask[index].title,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                )),
          );
        },
      ),
    ));
  }
}
