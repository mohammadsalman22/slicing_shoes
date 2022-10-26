import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyShoesCard extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final String price;
  final Color background;
  const MyShoesCard(
      {Key? key,
      required this.icon,
      required this.title,
      required this.subtitle,
      required this.price,
      required this.background})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 110,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: background,
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: Colors.black.withOpacity(0.25),
                blurStyle: BlurStyle.inner,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: const Color(0XFF403D3D))
                        .copyWith(fontSize: 16),
                  ),
                  Text(
                    subtitle,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: const Color(0XFF403D3D))
                        .copyWith(fontSize: 12),
                  ),
                  const SizedBox(
                    height: 23,
                  ),
                  Text(
                    price,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: const Color(0XFF403D3D))
                        .copyWith(fontSize: 15),
                  ),
                ],
              ),
              Image.asset(
                icon,
                height: 100,
                width: 120,
              ),
            ],
          ),
        )
      ],
    );
  }
}
