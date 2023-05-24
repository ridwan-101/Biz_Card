import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class BizCard extends StatelessWidget {
  const BizCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BizCard",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      // backgroundColor: const Color.fromARGB(31, 233, 199, 199),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[_getCard(), _getAvatar()],
        ),
      ),
    );
  }

  Container _getCard() {
    return Container(
      width: 310,
      height: 300,
      margin: const EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        color: Colors.lightGreen,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "Abdulazeez Ridwan Ademurewa",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          // const Text("ridthedev.com"),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                FontAwesomeIcons.twitter,
                size: 19,
              ),
              const SizedBox(
                width: 15.0,
                // height: 10.0,
              ),
              // Text(
              //   "haryor-posi101",
              //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              // ),
              RichText(
                text: TextSpan(
                  text: 'Haryor-posi101',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.black,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch(
                          'https://twitter.com/haryorposi_101?s=09'); // Replace with your desired link
                    },
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                FontAwesomeIcons.github,
                size: 19,
              ),
              const SizedBox(
                width: 10.0,
                height: 40.0,
              ),
              // Text(
              //   "Ridwan-101",
              //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              // ),
              RichText(
                text: TextSpan(
                  text: 'Ridwan-101',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.black,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch(
                          'https://github.com/ridwan-101'); // Replace with your desired link
                    },
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                FontAwesomeIcons.linkedin,
                size: 19,
              ),
              const SizedBox(
                width: 10.0,
                // height: 10.0,
              ),

              // Text(
              //   "Abdulazeez Ridwan",
              //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),

              // ),
              RichText(
                text: TextSpan(
                  text: 'Abdulazeez Ridwan',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.black,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch(
                          'https://www.linkedin.com/in/abdulazeez-ridwan-ba77a0222/'); // Replace with your desired link
                    },
                ),
              ),
            ],
          ),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                    onPressed: SharePressed,
                    icon: Icon(
                      Icons.share,
                      color: Colors.black,
                      size: 19,
                    )),
                SizedBox(
                  width: 10,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void SharePressed() {
    String message = 'Check out my repositiry on github'
        'https://github.com/ridwan-101';
    Share.share(message);
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(color: Colors.redAccent, width: 1.2),
        image: const DecorationImage(
            image: NetworkImage("https://picsum.photos/seed/picsum/300/300"),
            fit: BoxFit.cover),
      ),
    );
  }
}
