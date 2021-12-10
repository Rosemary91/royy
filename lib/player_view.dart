import 'package:flutter/material.dart';

class PlayerView extends StatelessWidget {
  const PlayerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var container = Container();
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            'NOW PLAYING',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: const Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
          actions: const [
            Icon(Icons.more_vert_outlined),
          ],
        ),
        body: ListView(
          children: [
            Container(
                height: 200,
                width: 200,
                margin: const EdgeInsets.all(50),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    image: DecorationImage(
                        image: AssetImage('assets/dear.jpg'),
                        fit: BoxFit.cover))),
            Column(children: const [
              (Text(
                'Bad Guy',
                style: TextStyle(fontSize: 20),
              )),
              SizedBox(
                height: 15,
              ),
              Text('Rose')
            ]),
            SizedBox(
              width: 15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                    Text(
                    '1:19',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '4:01',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),

                 ],
               ),

                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: const Slider(
                        value: 50, min: 0.0, max: 100, onChanged: null)),
              ],
            ),
            SizedBox()
          ],
        ));
  }
}
