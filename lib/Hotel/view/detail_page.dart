import 'package:flutter/material.dart';
import 'package:otelcim/Hotel/constants/constants.dart';
import 'package:otelcim/Hotel/view/hotel_home_page.dart';
import 'package:otelcim/Hotel/widgets/elevated_button_height.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _advertImage(context),
            _hotelNameAndRowPoint(context),
            _location(context),
            _price(),
            _amenities(context),
            _allCatagories(),
            _description(context),
            _descriptionText(),
            
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButtonHeight15(
                text: 'Şimdi Rezervasyon Yap',
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: ((context) => hotelHomePage())));
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding _price() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Text(
            '${HotelConstants.cardAdvertPriceOne} /',
            style: TextStyle(
                fontSize: 25, color: Colors.lime, fontWeight: FontWeight.bold),
          ),
          Text(
            HotelConstants.cardAdvertTime,
            style: TextStyle(color: Colors.black45),
          )
        ],
      ),
    );
  }

  Padding _location(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
            Icons.location_on_rounded,
            color: HotelConstants.colorBlack,
            size: 20,
          ),
          HotelConstants.sizedBoxWidht5,
          Text(
            HotelConstants.advertHotelLocationOne,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: HotelConstants.colorBlack, fontSize: 15),
          ),
        ],
      ),
    );
  }

  Padding _hotelNameAndRowPoint(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            HotelConstants.AdvertHotelTitleOne,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          Container(
            height: 30,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
              color: HotelConstants.colorLime,
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Text(
                    '4.7',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Stack _advertImage(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 2,
          child: Image.asset(
            fit: BoxFit.cover,
            HotelConstants.image_advert_one,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => hotelHomePage(),
                  ));
                },
                child: CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0.8),
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.black38,
                  ),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.8),
                child: Icon(
                  Icons.favorite_border_outlined,
                  color: Color.fromARGB(255, 59, 141, 62),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

Padding _allCatagories() {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Catagories(
            text: 'Resto',
            icon: Icon(
              Icons.fastfood_outlined,
              color: Colors.white,
            )),
        Catagories(
            text: 'Gym',
            icon: Icon(
              Icons.sports_gymnastics_outlined,
              color: Colors.white,
            )),
        Catagories(
            text: 'Pool',
            icon: Icon(
              Icons.pool,
              color: Colors.white,
            )),
        Catagories(
            text: 'More',
            icon: Icon(
              Icons.more_vert_sharp,
              color: Colors.white,
            )),
      ],
    ),
  );
}

Padding _amenities(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: Text(
      'Kolaylıklar',
      style: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(fontWeight: FontWeight.bold),
    ),
  );
}

Padding _descriptionText() {
  return Padding(
    padding: const EdgeInsets.only(right: 20, left: 20),
    child: Text(
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,'),
  );
}

Padding _description(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(
      children: [
        Text('Tanım', style: Theme.of(context).textTheme.titleLarge),
        SizedBox(
          width: 20,
        ),
        Text('İncelemeler',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Colors.black54))
      ],
    ),
  );
}

class Catagories extends StatelessWidget {
  const Catagories({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);
  final String text;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 231, 248, 78),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          SizedBox(
            height: 5,
          ),
          Text(text)
        ],
      ),
    );
  }
}
