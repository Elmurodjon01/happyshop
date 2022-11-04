import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:happyshop/constants/liabilities.dart';
import 'package:happyshop/services/provider.dart';
import 'package:happyshop/widgets/adBox.dart';
import 'package:provider/provider.dart';

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
    SMProvider smProvider = SMProvider();
    return SizedBox(
      height: 185,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          Consumer(
            builder: (context, value, child) {
              return Expanded(
                child: ImageSlideshow(
                  onPageChanged: (page) {
                    Provider.of<SMProvider>(context, listen: false)
                        .adIndex(page);
                  },
                  autoPlayInterval: 2000,
                  indicatorBackgroundColor: Colors.grey,
                  indicatorColor: Colors.white,
                  indicatorRadius: 4,
                  isLoop: true,
                  children: [
                    AdBox(
                      imageAdress: Liabilities().images[0],
                      label: 'Discount of all types of cosmetics',
                      discount: 'Up to 45%',
                      deadline: 'only on the night sale 12-13 October',
                    ),
                    AdBox(
                      imageAdress: Liabilities().images[1],
                      label: 'Winter clothes only',
                      discount: 'Up to 60%',
                      deadline: 'until the end of the day',
                    ),
                    AdBox(
                      imageAdress: Liabilities().images[2],
                      label: 'Discount for shoes',
                      discount: 'Up to 55%',
                      deadline: 'untill 14th of October',
                    ),
                    AdBox(
                      imageAdress: Liabilities().images[3],
                      label: 'Electronics',
                      discount: 'Up to 22%',
                      deadline: 'only today',
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
