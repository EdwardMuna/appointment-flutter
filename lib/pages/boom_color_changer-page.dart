import 'package:auntie_rafiki_appointment/components/round_button.dart';
import 'package:flutter/material.dart';

class BoomColorChanger extends StatefulWidget {
  @override
  _BoomColorChangerState createState() => _BoomColorChangerState();
}

class _BoomColorChangerState extends State<BoomColorChanger> {
  Color _backgroundColor = Colors.purpleAccent;
  List<Color> _ColorList = [
    Colors.purple,
    Colors.black,
    Colors.green,
    Colors.brown,
    Colors.yellow
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        backgroundColor: _backgroundColor,
        elevation: 0,
        leading: Icon(
          Icons.color_lens,
          size: 60,
          color: Colors.white,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 70,
              ))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Boom - magic color change!',
            style: TextStyle(color: Colors.white, fontSize: 60),
          ),
          Spacer(),
          Container(
            height: 100,
            child: ListView.builder(
                itemCount: _ColorList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: RoundButton(
                      onTap: () {
                        setState(() {
                          _backgroundColor = _ColorList[index];
                        });
                      },
                      color:_ColorList[index],
                    ),
                  );
                }),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
