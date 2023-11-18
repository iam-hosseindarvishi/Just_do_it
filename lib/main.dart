import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: Home()),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
            floatingActionButton: FloatingActionButton(
                onPressed: () {}, child: Icon(Icons.verified_user)),
            appBar: MyAppBar(),
            body:
                // Padding(
                //   // color: Colors.amber,
                //   padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
                //   // margin: EdgeInsets.all(50.0),
                //   // width: 50.0,
                //   // height: 50.0,
                //   child: Text("My Text"),
                // )
                Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Press")),
                TextButton(onPressed: () {}, child: Text("Text")),
                IconButton(onPressed: () {}, icon: Icon(Icons.remove_circle)),
                OutlinedButton(onPressed: () {}, child: Text("Press Me"))
              ],
            )),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "Just Do It",
        style: TextStyle(
            fontSize: 20.0,
            color: Colors.amber[600],
            fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.red,
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.0);
}
