import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:happyshop/constants/liabilities.dart';

import '../constants/constants.dart';

class AdService extends StatefulWidget {
  const AdService({super.key});

  @override
  State<AdService> createState() => _AdServiceState();
}

PageController _controller = PageController();

class _AdServiceState extends State<AdService> {
  int activePage = 1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 185,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: ImageSlideshow(
                onPageChanged: (page) {
                  setState(() {
                    activePage = page;
                  });
                },
                autoPlayInterval: 2000,
                indicatorBackgroundColor: Colors.grey,
                indicatorColor: Colors.white,
                indicatorRadius: 4,
                isLoop: true,
                children: [
                  Image.network(
                    Liabilities().images[0],
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    Liabilities().images[1],
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    Liabilities().images[2],
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    Liabilities().images[3],
                    fit: BoxFit.cover,
                  ),
                ]),
          ),
          // Expanded(
          //   child: PageView.builder(
          //       onPageChanged: (page) {
          //         setState(() {
          //           activePage = page;
          //         });
          //       },
          //       controller: _controller,
          //       itemCount: Liabilities().images.length,
          //       pageSnapping: true,
          //       itemBuilder: (context, pagePosition) {
          //         return Image.network(
          //           Liabilities().images[pagePosition],
          //           fit: BoxFit.cover,
          //         );
          //       }),
          // ),
          // Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: Liabilities()
          //         .indicators(Liabilities().images.length, activePage),),
        ],
      ),
    );
  }
}
        // Container(
        //   alignment: Alignment.bottomLeft,
        //   height: 162,
        //   width: double.infinity,
        //   decoration: const BoxDecoration(
        //     image: DecorationImage(
        //       image: NetworkImage(
        //           'https://i.pinimg.com/564x/50/f6/f7/50f6f731a2ca23aa58cfe4f776ca80a8.jpg'),
        //       fit: BoxFit.cover,
        //     ),
        //   ),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     mainAxisAlignment: MainAxisAlignment.end,
        //     children: [
        //       const SizedBox(
        //         height: 47,
        //         width: 211,
        //         child: Text(
        //           'Discount of all types of clothes',
        //           style: kAdTextStyle,
        //         ),
        //       ),
        //       Container(
        //         height: 25,
        //         width: 110,
        //         color: const Color(0xFFFF9900),
        //         child: const Text(
        //           'Up to 45 %',
        //           style: kDiscountColor,
        //           textAlign: TextAlign.center,
        //         ),
        //       ),
        //       const Text(
        //         'Only on the night sale 12-13 October',
        //         style: TextStyle(fontSize: 12),
        //       )
        //     ],
        //   ),
        // ),

