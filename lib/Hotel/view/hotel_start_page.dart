import 'package:flutter/material.dart';
import 'package:otelcim/Hotel/constants/constants.dart';
import '../widgets/elevated_button_height.dart';
import 'hotel_home_page.dart';

class HotelStartPage extends StatelessWidget {
  const HotelStartPage({super.key});

  final double _containerHeight = 2.3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            HotelConstants.image_start_page,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: HotelConstants.radiusCircular40,
                  topRight: HotelConstants.radiusCircular40,
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height / _containerHeight,
                  width: MediaQuery.of(context).size.height,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          HotelConstants.infotitle,
                          style:
                              Theme.of(context).textTheme.headline4?.copyWith(
                                    color: Colors.black,
                                  ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          HotelConstants.info_context,
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(color: Colors.grey[400]),
                        ),
                        SizedBox(height: 80),
                        ElevatedButtonHeight15(
                          text: HotelConstants.start_page_elevated,
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: ((context) => hotelHomePage())));
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
