import 'package:flutter/material.dart';

class UserCards extends StatelessWidget {
  const UserCards({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    final BoxDecoration decoration = BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[
          Colors.purple.shade600,
          Colors.deepPurple.shade800,
        ],
      ),
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(30.0),
        bottomRight: Radius.circular(30.0),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 9,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ],
    );
    final TextStyle cardTextStyle = Theme.of(context)
        .textTheme
        .subtitle1!
        .copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontFamily: 'OpenSans');
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: 380.0,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 10.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              height: 150.0,
              decoration: decoration,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    const Text('12/24',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 20)),
                    Container(
                      height: 40.0,
                      child: Image.asset(
                        'assets/logo.png',
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 80.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              height: 150,
              decoration: decoration.copyWith(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.purple.shade700,
                    Colors.deepPurple.shade900,
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    const Text('12/24',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 20)),
                    Container(
                      height: 40.0,
                      child: Image.asset(
                        'assets/logo.png',
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 150.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              height: 200.0,
              decoration: decoration.copyWith(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Colors.grey.shade900, Colors.black],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Card Holder',
                              style: cardTextStyle,
                            ),
                            const Text(
                              'Eler Minton',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              '1478 2255 4505 0874',
                              style: cardTextStyle.copyWith(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text('12/24',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize: 20)),
                        Container(
                          height: 40,
                          child: Image.asset(
                            'assets/logo.png',
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
