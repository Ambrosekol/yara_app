import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  Widget appName = const Text(
    'YARA!',
    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        // gradient: LinearGradient(
        //     stops: [0.2, 0.7],
        //     begin: Alignment.topCenter,
        //     end: Alignment.bottomCenter,
        //     colors: [Color.fromARGB(79, 83, 80, 80), Colors.black]),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/sliderman.jpg'),
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  stops: [0.1, 0.6],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(168, 51, 50, 50),
                    Color.fromARGB(223, 0, 0, 0)
                  ]),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.65,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Welcome to ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'Dongle'),
                      ),
                      appName,
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    'Your number 1 Mobile Shopping \n Platform',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Dongle',
                      height: 0.7,
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 25.0,
                      ),
                      Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 15.0,
                      )
                    ],
                  ),
                  const SizedBox(height: 90.0),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Skip',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 17.0),
                            )),
                        IconButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, 'secondWelcomeScreen');
                            },
                            icon: const Icon(
                              Icons.arrow_circle_right,
                              color: Color.fromARGB(255, 213, 169, 8),
                              size: 40.0,
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        // gradient: LinearGradient(
        //     stops: [0.2, 0.7],
        //     begin: Alignment.topCenter,
        //     end: Alignment.bottomCenter,
        //     colors: [Color.fromARGB(79, 83, 80, 80), Colors.black]),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/sliderwoman.jpg'),
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  stops: [0.1, 0.6],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(168, 51, 50, 50),
                    Color.fromARGB(223, 0, 0, 0)
                  ]),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.65,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Shop for quality Unisex wears \n right in the comfort of your home',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Dongle',
                      height: 0.7,
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 15.0,
                      ),
                      Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 25.0,
                      ),
                    ],
                  ),
                  const SizedBox(height: 90.0),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 9.0),
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height * 0.06,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 213, 169, 8),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                              fontFamily: 'Dongle'),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
