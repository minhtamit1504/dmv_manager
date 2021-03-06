import 'package:dmv_manager/pages/accounts/login_page.dart';
import 'package:dmv_manager/themes/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}
GlobalKey navigatorPagedKey = GlobalKey();
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return MaterialApp(
      title: 'Vip Manager',
      theme: ThemeData(
        fontFamily: GoogleFonts.aBeeZee().fontFamily,
        primarySwatch: Colors.lightBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: MyHomePage(title: 'DMV Manager'),
      home: LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Center(child: Text(widget.title,style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white))),
      ),
      body: Center(
          child: Text("data")
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


class LoadingScreen extends StatefulWidget {
  static const routeName = 'loading';

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    /*load().then((value) {
      if (value) {
//        Navigator.of(context).pushReplacementNamed('navigatorPage');
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (b) => NavigatorPage(
                  key: navigatorPagedKey,
                )));
      }
    }); */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BACKGROUND_COLOR,
      body: Center(
        child: Text('Loading...'),
      ),
    );
  }

  /*Future<bool> load() async {
    await getGlobal();
    if (currentLogin == null) {
      print('Not Logged In!');
    }
    return true;
  }*/
}
