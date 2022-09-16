import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:otelcim/Hotel/widgets/text_small_bold.dart';

import '../constants/constants.dart';
import '../widgets/container_background_lime.dart';
import '../widgets/text_title_bold.dart';
import '../widgets/text_title_widget.dart';

class hotelHomePage extends StatelessWidget {
  const hotelHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.lime,
        statusBarIconBrightness: Brightness.dark));
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10, top: 60, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _rowAppbarAll(context),
            HotelConstants.sizedBoxHeigt20,
            const TextTitleWidget(text: HotelConstants.start_page_titletwo),
            HotelConstants.sizedBoxHeigt20,
            row_search_bar_and_serch_settings(context),
            HotelConstants.sizedBoxHeigt20,
            const RowTitle(RowTextSmall: HotelConstants.textSmalBoldOne),
            HotelConstants.sizedBoxHeigt20,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  
                  CardDesing(
                      image: HotelConstants.image_advert_one,
                      rowTitle: HotelConstants.AdvertHotelTitleOne,
                      columTitle: HotelConstants.advertHotelLocationOne),
                      
                  HotelConstants.sizedBoxWidht10,
                  CardDesing(
                      image: HotelConstants.image_advert_two,
                      rowTitle: HotelConstants.AdvertHotelTitleTwo,
                      columTitle: HotelConstants.advertHotelLocationTwo),
                  HotelConstants.sizedBoxWidht10,
                  CardDesing(
                      image: HotelConstants.image_advert_three,
                      rowTitle: HotelConstants.AdvertHotelTitleThree,
                      columTitle: HotelConstants.advertHotelLocationThree),
                  HotelConstants.sizedBoxWidht10,
                  CardDesing(
                      image: HotelConstants.image_advert_four,
                      rowTitle: HotelConstants.AdvertHotelTitleFour,
                      columTitle: HotelConstants.advertHotelLocationFour)
                ],
              ),
            ),
            HotelConstants.sizedBoxHeigt15,
            const RowTitle(RowTextSmall: HotelConstants.textSmalBoldTwo),
            HotelConstants.sizedBoxHeigt15,
            SizedBox(
              height: 250,
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    columnGeneralCard(image: HotelConstants.image_advert_one, hotelName: HotelConstants.AdvertHotelTitleOne, hotelLacation: HotelConstants.advertHotelLocationOne, hotelPoint: HotelConstants.cardAdvertPointOne, hotelPrice: HotelConstants.cardAdvertPriceOne),
                    columnGeneralCard(image: HotelConstants.image_advert_two, hotelName: HotelConstants.AdvertHotelTitleTwo, hotelLacation: HotelConstants.advertHotelLocationTwo, hotelPoint: HotelConstants.cardAdvertPointTwo, hotelPrice: HotelConstants.cardAdvertPriceTwo),                     
                    columnGeneralCard(image: HotelConstants.image_advert_three, hotelName: HotelConstants.AdvertHotelTitleThree, hotelLacation: HotelConstants.advertHotelLocationThree, hotelPoint: HotelConstants.cardAdvertPointThree, hotelPrice: HotelConstants.cardAdvertPriceThree),
                    columnGeneralCard(image: HotelConstants.image_advert_four, hotelName: HotelConstants.AdvertHotelTitleFour, hotelLacation: HotelConstants.advertHotelLocationFour, hotelPoint: HotelConstants.cardAdvertPointFour, hotelPrice: HotelConstants.cardAdvertPriceFour),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row _rowAppbarAll(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _appbarRowTitle(context),
        _appBarRowButton(),
      ],
    );
  }

  Row row_search_bar_and_serch_settings(BuildContext context) {
    return Row(children: [
      const Expanded(
        flex: 8,
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search), hintText: HotelConstants.search),
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.lime,
          ),
          height: MediaQuery.of(context).size.height / 18,
          child: const Icon(Icons.manage_search_rounded, color: Colors.white),
        ),
      ),
    ]);
  }

  containerBackgroundLime _appBarRowButton() {
    return containerBackgroundLime(
      widget: IconButton(
        onPressed: () {},
        icon: Icon(Icons.notifications_none, color: Colors.white),
      ),
    );
  }

  Row _appbarRowTitle(BuildContext context) {
    return Row(
      children: [
        containerBackgroundLime(
          widget: Image.asset(
            HotelConstants.image_user,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 20),
        Text(
          HotelConstants.start_page_title,
          style: Theme.of(context).textTheme.headline5?.copyWith(
                color: HotelConstants.colorBlack,
              ),
        ),
      ],
    );
  }
}

class columnGeneralCard extends StatelessWidget {
  const columnGeneralCard({
    Key? key,
    required this.image,
    required this.hotelName,
    required this.hotelLacation,
    required this.hotelPoint,
    required this.hotelPrice,
  }) : super(key: key);

  final String image;
  final String hotelName;
  final String hotelLacation;
  final String hotelPoint;
  final String hotelPrice;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: HotelConstants.borderRadiusCircular20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 2, child: cardClipRRectImage(image: image)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
                flex: 6,
                child: Padding(
                  padding: HotelConstants.paddingGeneral12,
                  child: Column(
                    children: [
                      cardRightTextIcon(text: hotelName),
                      HotelConstants.sizedBoxHeigt5,
                      cardRightLocationText(text: hotelLacation),
                      HotelConstants.sizedBoxHeigt10,
                      cardRigthStarText(text: hotelPoint),
                      HotelConstants.sizedBoxHeigt10,
                      cardRightPriceText(price: hotelPrice),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class cardClipRRectImage extends StatelessWidget {
  const cardClipRRectImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      
      borderRadius: const BorderRadius.only(
        bottomRight:Radius.circular(50),
        topRight: HotelConstants.radius10,
      ),
      child: Image.asset(
        image,
        fit: BoxFit.cover,
        height: MediaQuery.of(context).size.height / 5.7,
        width: MediaQuery.of(context).size.height/10,
      ),
    );
  }
}

class cardRightPriceText extends StatelessWidget {
  const cardRightPriceText({
    Key? key,
    required this.price,
  }) : super(key: key);

  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Text(
              price,
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: HotelConstants.colorLime,
                  ),
            ),
            Text(
              HotelConstants.cardAdvertTime,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  ?.copyWith(color: HotelConstants.colorLime),
            ),
          ],
        ),
      ],
    );
  }
}

class cardRigthStarText extends StatelessWidget {
  const cardRigthStarText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            const Icon(
              Icons.star,
              color: HotelConstants.coloramber,
              size: 16,
            ),
            HotelConstants.sizedBoxWidht5,
            Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  ?.copyWith(color: HotelConstants.colorGrey),
            ),
          ],
        ),
      ],
    );
  }
}

class cardRightLocationText extends StatelessWidget {
  const cardRightLocationText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.location_on_rounded,
          color: HotelConstants.colorGrey,
          size: 16,
        ),
        HotelConstants.sizedBoxWidht5,
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              ?.copyWith(color: HotelConstants.colorBlack),
        ),
      ],
    );
  }
}

class cardRightTextIcon extends StatelessWidget {
  const cardRightTextIcon({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextSmallBold(text: text),
        const Icon(
          Icons.favorite_outlined,
          color: HotelConstants.colorLime,
        )
      ],
    );
  }
}

class RowTitle extends StatelessWidget {
  const RowTitle({
    Key? key,
    required this.RowTextSmall,
  }) : super(key: key);
  final String RowTextSmall;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextTitleBold(text: RowTextSmall),
        Text(
          HotelConstants.seeAll,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              ?.copyWith(color: Colors.grey),
        )
      ],
    );
  }
}

class CardDesing extends StatelessWidget {
  const CardDesing({
    Key? key,
    required this.image,
    required this.rowTitle,
    required this.columTitle,
  }) : super(key: key);
  final String image;
  final String rowTitle;
  final String columTitle;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        RowClipRRectAdvertImage(image: image),
        const RowPositionFlag(),
        RowPositionText(text: rowTitle),
        RowPositinedLocationText(text: columTitle)
      ],
    );
  }
}

class RowPositinedLocationText extends StatelessWidget {
  const RowPositinedLocationText({Key? key, required this.text})
      : super(key: key);
  final double _posinedRightLocationTextRow = 175;
  final double _posinedBottomLocationTextRow = 20;

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 175, left: 10),
      child: Positioned(
        right: _posinedRightLocationTextRow,
        bottom: _posinedBottomLocationTextRow,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.location_on_rounded,
              color: HotelConstants.colorWhite,
            ),
            HotelConstants.sizedBoxWidht5,
            Text(
              text,
              style: Theme.of(context).textTheme.overline?.copyWith(
                  color: HotelConstants.colorWhite,
                  fontWeight: FontWeight.w900,
                  fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

class RowPositionText extends StatelessWidget {
  const RowPositionText({Key? key, required this.text}) : super(key: key);
  final String text;

  final double _posinedRightTextRow = 85;
  final double _posinedBottomTextRow = 45;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 155, left: 15),
      child: Positioned(
          bottom: _posinedBottomTextRow,
          right: _posinedRightTextRow,
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: HotelConstants.colorWhite),
          )),
    );
  }
}

class RowPositionFlag extends StatelessWidget {
  const RowPositionFlag({
    Key? key,
  }) : super(key: key);
  final double _sizeIconRow = 35.0;
  final double _posinedLeftFlagRow = 280;
  final double _posinedBottomFlagRow = 170;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: _posinedLeftFlagRow,
      bottom: _posinedBottomFlagRow,
      child: Icon(
        Icons.favorite,
        color: HotelConstants.colorWhite,
        size: _sizeIconRow,
      ),
    );
  }
}

class RowClipRRectAdvertImage extends StatelessWidget {
  const RowClipRRectAdvertImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: HotelConstants.borderRadiusCircular20,
      child: Image.asset(
        image,
        fit: BoxFit.cover,
        height: MediaQuery.of(context).size.height / 3.7,
        width: MediaQuery.of(context).size.width / 1.2,
      ),
    );
  }
}
