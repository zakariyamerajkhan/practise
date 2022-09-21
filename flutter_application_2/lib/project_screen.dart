import 'package:flutter/material.dart';

class DesignScreen extends StatefulWidget {
  const DesignScreen({Key? key}) : super(key: key);

  @override
  State<DesignScreen> createState() => _DesignScreenState();
}

bool _isToggle = false;

class _DesignScreenState extends State<DesignScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _isToggle ? Colors.amber : Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        '01',
                        style: TextStyle(
                          fontSize: 50,
                          color: _isToggle ? Colors.black : Colors.amber,
                        ),
                      ),
                      Container(
                        height: 3,
                        width: 60,
                        color: _isToggle ? Colors.white : Colors.grey,
                      ),
                      const Text(
                        '52',
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: _isToggle ? Colors.black : Colors.amber,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Icon(
                            Icons.cloud_queue,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              '30',
                              style:
                                  TextStyle(fontSize: 35, color: Colors.white),
                            ),
                            Text(
                              'o',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Text(
                              'C',
                              style:
                                  TextStyle(fontSize: 35, color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Clear\nThursday\nSeptember 17',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: const [
                            Icon(
                              Icons.phone_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40),
                              child: Icon(
                                Icons.ondemand_video_rounded,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            Icon(
                              Icons.camera_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 12,
                    height: 300,
                    color: _isToggle ? Colors.black : Colors.amber,
                    alignment: Alignment.bottomCenter,
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        _isToggle = !_isToggle;
                      });
                    },
                    child: _isToggle
                        ? Container(
                            height: 80,
                            // width: 50,
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.topCenter,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 6,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          )
                        : Container(
                            height: 80,
                            // width: 50,
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.bottomCenter,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: 12,
                                  height: 40,
                                  color: Colors.amber,
                                ),
                                Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      width: 6,
                                      color: Colors.amber,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
