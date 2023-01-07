import 'package:flutter/material.dart';
import 'package:yara_app/screens/loginscreen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  Widget appName = const Text(
    'YARA!',
    style: TextStyle(
        fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20.0),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                      Color.fromARGB(225, 35, 34, 34),
                      Color.fromARGB(255, 0, 0, 0),
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
                          Icons.circle_outlined,
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
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              },
                              child: const Text(
                                'Skip',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17.0),
                              )),
                          InkWell(
                            onTap: () => Navigator.pushNamed(
                                context, 'secondWelcomeScreen'),
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 255, 184, 4),
                              ),
                              height: 35.0,
                              width: 35.0,
                              child: const Center(
                                child: Icon(
                                  Icons.chevron_right,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
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
    return Scaffold(
      body: Container(
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
                      Color.fromARGB(225, 35, 34, 34),
                      Color.fromARGB(255, 0, 0, 0)
                    ]),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.only(top: 40.0, left: 10.0),
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.chevron_left,
                    size: 30.0,
                  ),
                  color: const Color.fromARGB(255, 255, 184, 4),
                ),
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
                      'Shop for quality Unisex wears\n right in the comfort of your home',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: 30.0,
                        fontFamily: 'Dongle',
                        height: 0.9,
                      ),
                    ),
                    const SizedBox(height: 40.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.circle_outlined,
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
                      child: InkWell(
                        onTap: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen())),
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 9.0),
                          width: MediaQuery.of(context).size.width / 2,
                          height: MediaQuery.of(context).size.height * 0.06,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 184, 4),
                              borderRadius: BorderRadius.circular(15)),
                          child: const Center(
                            child: Text(
                              'Get Started',
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.white,
                                  fontSize: 30.0,
                                  fontFamily: 'Dongle'),
                            ),
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
      ),
    );
  }
}
