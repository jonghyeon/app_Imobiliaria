import 'package:flutter/material.dart';
import 'package:renthouse/shared/constant.dart';
import 'package:renthouse/widgets/facilities_widget.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 296,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/modern_house.png',
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: InkWell(
              onTap: () => Navigator.pop(context),
              child: SafeArea(
                child: Container(
                  width: 30,
                  height: 30,
                  margin: const EdgeInsets.only(left: 20, top: 10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Icon(Icons.chevron_left),
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 250),
            padding: const EdgeInsets.symmetric(horizontal: 30),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(28),
                topRight: Radius.circular(28),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Modern House',
                            style:
                                semiBold.copyWith(color: black, fontSize: 18),
                          ),
                          Text(
                            'Bandung',
                            style: regular.copyWith(
                              color: text,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: orange,
                            size: 18,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            4.5.toString(),
                            style: medium.copyWith(
                              color: black,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Listing Agent',
                    style: semiBold.copyWith(
                      color: black,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/ihsanfrr.png',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ihsanfrr',
                                style: medium.copyWith(
                                  color: black,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'House Owner',
                                style: regular.copyWith(
                                  color: text,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: purple.withOpacity(0.2),
                            ),
                            child: const Icon(
                              Icons.message,
                              size: 15,
                              color: purple,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: purple.withOpacity(0.2),
                            ),
                            child: const Icon(
                              Icons.phone,
                              size: 15,
                              color: purple,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    'House Facilities',
                    style: semiBold.copyWith(
                      color: black,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const FacilitiesWidget(),
                  Text(
                    'Description',
                    style: semiBold.copyWith(
                      color: black,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Luxury homes at affordable prices with Bandung\'s hilly atmosphere. Located in a strategic location,  flood free.',
                    style: regular.copyWith(
                      color: text,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Price',
                            style: semiBold.copyWith(
                              color: text,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '\$7,500',
                            style: bold.copyWith(
                              color: purple,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 190,
                        height: 50,
                        decoration: BoxDecoration(
                          color: purple,
                          borderRadius: BorderRadius.circular(28),
                        ),
                        child: Center(
                          child: Text(
                            'Book Now',
                            style: semiBold.copyWith(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
