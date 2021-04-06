import 'package:flutter/material.dart';

class ChallengeListWidget extends StatelessWidget {
  final Color color;

  ChallengeListWidget(this.color);

  var challenges = ["a", "a", "a", "a", "a", "a", "a", "a"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemBuilder: (context, position) {
        return Card(
            margin: const EdgeInsets.all(5.0),
            color: Colors.white,
            child: itemChallengeRow(challenges[position], context));
      },
      itemCount: challenges.length,
    );
  }

  Widget itemChallengeRow(String item, BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 15, right: 4),
                child: Image.asset('asset/images/image_org.png', width: 25, fit: BoxFit.fitWidth)),
            Text("Croix Rouge de France", style: TextStyle(color: const Color(0xff5757ff))),
            Spacer(),
            Stack(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Image.asset('asset/images/image_user.png', width: 25, fit: BoxFit.fitWidth)),
                Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Image.asset('asset/images/image_user.png', width: 25, fit: BoxFit.fitWidth)),
                Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Image.asset('asset/images/image_user.png', width: 25, fit: BoxFit.fitWidth))
              ],
            ),
            Text("+34", style: TextStyle(color: const Color(0xff2a2a2a))),
            Padding(padding: const EdgeInsets.only(right: 10.0, top: 5))
          ],
        ),
        Divider(color: const Color(0x1a000000)),
        Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Padding(
            padding: EdgeInsets.only(right: 10.0, top: 5, bottom: 5),
            child: Text("SKATER DE L'EXTREME !",
                style: TextStyle(color: const Color(0xff4a4a4a), fontWeight: FontWeight.bold, fontSize: 21)),
          )
        ]),
        Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Padding(
            padding: EdgeInsets.only(right: 10.0, bottom: 5),
            child: Text(
              "Anybody who can take a selfie from the top of the montain is winning the price !Good climb guys !",
              style: TextStyle(color: const Color(0xff4a4a4a), fontWeight: FontWeight.normal, fontSize: 14),
              textAlign: TextAlign.right,
            ),
          ),
        ]),
        Stack(
          children: [
            Image.asset(
              'asset/images/image_bg_3.png',
              width: MediaQuery.of(context).size.width,
              height: 250,
              fit: BoxFit.fitWidth,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                        child: Text("Donations",
                            style: TextStyle(
                                color: const Color(0xffffffff), fontWeight: FontWeight.normal, fontSize: 21))),
                    Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text("234,00€",
                            style:
                                TextStyle(color: const Color(0xffffffff), fontWeight: FontWeight.w600, fontSize: 41))),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, right: 20.0),
                  child: Image.asset('asset/images/ic_camera_movie.png', width: 25, fit: BoxFit.fitWidth),
                )
              ],
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0, bottom: 10.0),
              child: Image.asset('asset/images/ic_star.png', width: 25, fit: BoxFit.fill),
            ),
            Text("324 personnes ont boosté",
                style: TextStyle(color: const Color(0xff4a4a4a), fontWeight: FontWeight.normal, fontSize: 14)),
            Spacer(),
            Image.asset('asset/images/ic_timer.png', width: 25, fit: BoxFit.fill),
            Text("22:33:56",
                style: TextStyle(color: const Color(0xff4a4a4a), fontWeight: FontWeight.normal, fontSize: 26)),
            Padding(padding: const EdgeInsets.only(right: 10.0))
          ],
        ),
        Divider(color: const Color(0x1a000000)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(padding: const EdgeInsets.only(left: 20.0), child: Image.asset('asset/images/ic_like.png')),
            Padding(padding: const EdgeInsets.only(left: 0.0), child: Image.asset('asset/images/ic_donate.png')),
            Padding(padding: const EdgeInsets.only(left: 0.0), child: Image.asset('asset/images/ic_follow1.png')),
            Padding(padding: const EdgeInsets.only(right: 20.0), child: Image.asset('asset/images/ic_take.png'))
          ],
        ),
        Divider(color: const Color(0x1a000000)),
        Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 10.0, bottom: 20.0),
            child: Text("proof type",
                style: TextStyle(color: const Color(0xff2a2a2a), fontWeight: FontWeight.normal, fontSize: 16))),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Image.asset('asset/images/ic_proof.png' /*, width: 25, fit: BoxFit.fitWidth*/)),
            Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Image.asset('asset/images/ic_proof_2.png' /*, width: 25, fit: BoxFit.fitWidth*/)),
            Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Image.asset('asset/images/ic_proof.png' /*, width: 25, fit: BoxFit.fitWidth*/)),
            Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Image.asset('asset/images/ic_proof_2.png' /*, width: 25, fit: BoxFit.fitWidth*/))
          ],
        ),
        Padding(padding: const EdgeInsets.only(bottom: 20.0))
      ],
    );
  }
}
