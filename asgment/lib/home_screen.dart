import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset('assets/logo.svg'),
                SizedBox(width: 8),
                Text(
                  'Easypay',
                  style: GoogleFonts.ibmPlexSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, Samantha',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 4),
                    SizedBox(height: 4),
                    Text(
                      'Your available balance',
                      style: GoogleFonts.roboto(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  '₹4,590.00',
                  style: GoogleFonts.ibmPlexSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
              ],
            ),
            // Container(
            //   padding: EdgeInsets.all(12),
            //   color: Colors.black,
            //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(3)),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Column(
            //         children: [
            //           SvgPicture.asset('assets/topup.svg'),
            //           SizedBox(height: 4),
            //           Text(
            //             'Top Up',
            //             style: GoogleFonts.roboto(
            //               color: Colors.white,
            //               fontWeight: FontWeight.bold,
            //               fontSize: 16,
            //             ),
            //           ),
            //         ],
            //       ),
            //       Column(
            //         children: [
            //           SvgPicture.asset('assets/send.svg'),
            //           SizedBox(height: 4),
            //           Text(
            //             'Send',
            //             style: GoogleFonts.roboto(
            //               color: Colors.white,
            //               fontWeight: FontWeight.bold,
            //               fontSize: 16,
            //             ),
            //           ),
            //         ],
            //       ),
            //       Column(
            //         children: [
            //           SvgPicture.asset('assets/withdraw.svg'),
            //           SizedBox(height: 4),
            //           Text(
            //             'Withdraw',
            //             style: GoogleFonts.roboto(
            //               color: Colors.white,
            //               fontWeight: FontWeight.bold,
            //               fontSize: 16,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/sending');
        },
        tooltip: 'Sending',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
