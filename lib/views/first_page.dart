import 'package:flutter/material.dart';
//import 'package:cached_network_image/cached_network_image.dart';
import 'http_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class FirstPage extends StatefulWidget {
  @override
  OpenUrlState createState() => new OpenUrlState();
//  State<StatefulWidget> createState() {
//    return new CounterState();
//  }
}

class FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Page 1"),
      ),
      body: new GestureDetector(
        onTap: () {
          print('tapped!');
        },
        onLongPress: () {
          print("long press!");
        },
        child: new Container(
          height: 36.0,
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          decoration: new BoxDecoration(
            borderRadius: new BorderRadius.circular(5.0),
            color: Colors.lightGreen[500],
          ),
          child: new Center(
            child: new Text(
                'Engagefhkjsdhfkjsdhfkjsdhfjkdshkjghjksdhfkjsdhfkjfdsasdhfkjdshfkjsdh'),
          ),
        ),
      ),
    );
  }
}

class CounterState extends State<FirstPage> {
  CounterState() : super();
  int _counter = 0;
  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Page 1"),
      ),
      body: new Container(
//        margin: new EdgeInsets.symmetric(vertical: 20.0),
        height: 200.0,
        child: new ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.phone),
              title: new Text('123'),
            ),
            new Container(
              width: 160.0,
              color: Colors.red,
            ),
            new Container(
              width: 160.0,
              color: Colors.blue,
            ),
            new Container(
              width: 160.0,
              color: Colors.green,
            ),
            new Container(
              width: 160.0,
              color: Colors.yellow,
            ),
            new Container(
              width: 160.0,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}

class ListViewTest extends State<FirstPage> {
  final List items = new List.generate(
      100, (i) => i % 6 == 0 ? new HeadItem() : new MessageItem());
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Scaffold sd = new Scaffold(
      appBar: new AppBar(
        title: new Text("List view"),
      ),
      body: new ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          ListTile lt;
          if (item is HeadItem) {
            item.heading = "Heading $index";
            lt = new ListTile(
              title: new Text(
                item.heading,
                style: Theme.of(context).textTheme.headline,
              ),
              onTap: () {
                _pushToDetail(context);
              },
            );
          } else if (item is MessageItem) {
            item.sender = "Sender $index";
            item.body = "Body $index";
            lt = new ListTile(
              title: new Text(item.sender),
              subtitle: new Text(item.body),
            );
          }

          return new Dismissible(
            key: new Key("$index"),
            child: lt,
            background: new Container(color: Colors.red),
            onDismissed: (direction) {
              items.removeAt(index);
              Scaffold.of(context).showSnackBar(
                  new SnackBar(content: new Text("$item dismissed")));
            },
          );
//          return item;
        },
      ),
    );
    return sd;
  }

  _pushToDetail(BuildContext context) {
    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new HttpTest()));
  }
}

abstract class ListItem {}

class HeadItem extends ListItem {
  String heading;
}

class MessageItem extends ListItem {
  String sender;
  String body;
}

class GridViewTest extends State<FirstPage> {
  final List items = new List(100);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Grid view"),
        ),
        body: new GridView.count(
          crossAxisCount: 1,
          children: new List.generate(100, (index) {
            return new Center(
              child: new Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline,
              ),
            );
          }),
        ));
  }
}


class _SampleAppPageState extends State {
  // Default placeholder text
  bool toggle = true;
  void _toggle() {
    setState(() {
      toggle = !toggle;
    });
  }

  _getToggleChild() {
    if (toggle) {
      return Text('Toggle One');
    } else {
      return CupertinoButton(
        onPressed: () {},
        child: Text('Toggle Two'),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App"),
      ),
      body: new Center(
        child: _getToggleChild(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggle,
        tooltip: 'Update Text',
        child: Icon(Icons.update),
      ),
    );
  }
}

class AnimationTest extends State with TickerProviderStateMixin {
  AnimationController controller;
  CurvedAnimation curved;

  @override
  void initState() {
    controller = AnimationController(duration: Duration(milliseconds: 2000), vsync: this);
    curved = CurvedAnimation(parent: controller, curve: Curves.easeOut);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Scaffold sf = new Scaffold(
      appBar: new AppBar(
        title: new Text("Animation"),
      ),
      body: Center(
        child: Container(
          child: FadeTransition(
            opacity: curved,
            child: FlutterLogo(
              size: 100,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.forward();
          },
        child: Icon(Icons.update),
      ),
    );
    return sf;
  }
}


class _MyFormState extends State {
  // Create a text controller and use it to retrieve the current value.
  // of the TextField!
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when disposing of the Widget.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Retrieve Text Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: myController,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // When the user presses the button, show an alert dialog with the
        // text the user has typed into our text field.
        onPressed: () {
          return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                // Retrieve the text the user has typed in using our
                // TextEditingController
                content: Text(myController.text),
              );
            },
          );
        },
        tooltip: 'Show me the value!',
        child: Icon(Icons.text_fields),
      ),
    );
  }
}


class ImageState extends State {
  @override
  Widget build(BuildContext context) {
    return new Image.asset('assets/images/Artboard.png',width: 10,height: 20,);
    /*
    return Container(
      constraints: new BoxConstraints(maxWidth: 100,maxHeight: 50),
      child: Image.asset('assets/images/Artboard.png',width: 10,height: 20,),
      width: 100,
      height: 50,
      color: Colors.red,
    );
    */
  }
}

class OpenUrlState extends State {
  void launchURL() {
    launch("https://www.baidu.com",forceSafariVC: true);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new RaisedButton(
        onPressed: launchURL,
        child: new Text("open url"),
      ),
    );
  }
}