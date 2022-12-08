import 'package:events/src/pages/importpages.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _titulo(),
          const HeaderHome(),
          Transform.translate(
            offset: const Offset(150, 95),
          ),
          Transform.translate(offset: const Offset(20, 190), child: Cards()),
          Transform.translate(offset: const Offset(20, 490), child: Cards()),
        ],
      ),
    );
  }
}

class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
      child: Container(
          child: Image.asset(
        "assets/images/1.jpeg",
        width: 350,
      )
          // height: 200,
          ),
    );
  }
}

// ------------------------------ HEADER--------------------------------------

class _titulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      const HeaderHome(),
      Transform.translate(
        offset: Offset(19, 64),
        child: Stack(
          children: [
            Image.asset(
              "assets/images/events.png",
              height: 50,
              width: 50,
            ),
          ],
        ),
      )
    ]);
  }
}
