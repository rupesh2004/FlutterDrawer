import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    final Color appBarColor = Color.fromARGB(255, 45, 210, 106);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp",
        style: TextStyle(
          color: Colors.white,
        ),
        ),
        backgroundColor: appBarColor,  
        actions: <Widget>[
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("This is Camera")));
            },
            icon: const Icon(Icons.camera_alt_outlined,color: Colors.white,),
            tooltip: "Camera",
          ),
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Search a perfect match")));
            },
            icon: Icon(Icons.search,color: Colors.white,),
            tooltip: "Search",
          ),
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Other Options")));
              },
              icon: Icon(Icons.menu,color: Colors.white,)
              )
        ],
      ),
      body: Center(
        child: Container(
          child: Text(
            "Student Drawer is Invisible",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: UserAccountsDrawerHeader(
                accountName: Text(
                  "Rupesh Bhosale",
                  style: TextStyle(fontSize: 15),
                ),
                accountEmail: Text(
                  "bhpsalerupesh67@gmail.com",
                  style: TextStyle(fontSize: 15),
                ),
                currentAccountPictureSize: Size.square(50),
                margin: EdgeInsets.all(0.5),
                currentAccountPicture: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 165, 255, 137),
                    child: Icon(Icons.person)),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              trailing: Icon(Icons.keyboard_arrow_right),
              title: Text('Home'),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("This is home")));
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Person"),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("This is person tab")));
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              trailing: Icon(Icons.keyboard_arrow_right),
              title: Text("Book"),
              onTap: () => {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Book Space"),
                      content: Text("Online booking is closed"),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("Close"),
                        ),
                      ],
                    );
                  },
                )
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit_document),
              trailing: Icon(Icons.keyboard_arrow_right),
              title: const Text(' Edit Profile '),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("This is edit profile tab")));
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Logout"),
              leading: Icon(Icons.logout),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Logout Successfully")));
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
