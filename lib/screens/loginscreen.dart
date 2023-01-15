import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordisHidden = false;
  final Color _brandColor = const Color.fromARGB(255, 255, 184, 4);
  final InputBorder _underlinedBorder = UnderlineInputBorder(
      borderSide:
          const BorderSide(color: Color.fromARGB(255, 255, 184, 4), width: 2.0),
      borderRadius: BorderRadius.circular(10.0));
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
            image: AssetImage('assets/images/sliderman.jpg'),
          ),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.1, 0.6],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(113, 35, 34, 34),
                    Color.fromARGB(255, 0, 0, 0)
                  ],
                ),
              ),
            ),
            ListView(
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 4),
                const Center(
                  child: Text(
                    'YARA',
                    style: TextStyle(
                        fontSize: 50.0,
                        color: Colors.white,
                        fontFamily: 'Rubik'),
                  ),
                ),
                const SizedBox(height: 40.0),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    children: [
                      TextField(
                        style: const TextStyle(
                            color: Colors.white, fontSize: 18.0),
                        cursorColor: _brandColor,
                        cursorHeight: 25.0,
                        // enabled: true,
                        // controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: inputDecorationWidget(
                          null,
                          icon: Icons.person,
                          identifier: 'Username',
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      TextField(
                        style: const TextStyle(
                            color: Colors.white, fontSize: 18.0),
                        cursorColor: _brandColor,
                        cursorHeight: 25.0,
                        // enabled: true,
                        // controller: _emailController,
                        obscureText: passwordisHidden,
                        obscuringCharacter: '*',
                        decoration: inputDecorationWidget(
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if (passwordisHidden == false) {
                                  passwordisHidden = true;
                                } else {
                                  passwordisHidden = false;
                                }
                              });
                            },
                            icon: passwordisHidden
                                ? Icon(
                                    Icons.visibility,
                                    color: _brandColor,
                                  )
                                : Icon(
                                    Icons.visibility_off,
                                    color: _brandColor,
                                  ),
                          ),
                          icon: Icons.lock,
                          identifier: 'Password',
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'fg_password');
                            },
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(color: _brandColor),
                            )),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30.0),
                InkWell(
                  onTap: () => Navigator.popAndPushNamed(context, 'homePage'),
                  // Navigator.pushReplacement(context,
                  //     MaterialPageRoute(builder: (context) => LoginScreen())),
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.3),
                    // width:,
                    height: MediaQuery.of(context).size.height * 0.06,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: _brandColor,
                            fontSize: 35.0,
                            fontFamily: 'Dongle'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                    Text(
                      '    Or connect with   ',
                      style: TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
                    Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),

                //////////////////
                ////////////////
                ///
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    signInAlt(() => null,
                        name: 'Google',
                        imagePath: 'assets/images/google-logo.png'),
                    signInAlt(() => null,
                        name: 'Facebook',
                        imagePath: 'assets/images/fb-logo.png')
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Dont have an account?',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: _brandColor, fontSize: 17.0),
                        ))
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration inputDecorationWidget(
    Widget? suffix, {
    required String identifier,
    required IconData icon,
  }) {
    return InputDecoration(
      isCollapsed: false,
      hintStyle: const TextStyle(color: Colors.white, fontSize: 18.0),
      prefixIcon: Icon(
        icon,
        color: _brandColor,
        size: 25.0,
      ),
      suffixIcon: suffix,
      hintText: identifier,
      focusedBorder: _underlinedBorder,
      enabledBorder: _underlinedBorder,
      border: _underlinedBorder,
    );
  }

  Widget signInAlt(Function onTapFunction,
      {required String name, required String imagePath}) {
    return InkWell(
      onTap: () => onTapFunction,
      // Navigator.pushReplacement(context,
      //     MaterialPageRoute(builder: (context) => LoginScreen())),
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          margin: const EdgeInsets.only(bottom: 9.0),
          width: MediaQuery.of(context).size.width / 3,
          height: MediaQuery.of(context).size.height * 0.07,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
              ),
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                name,
                style: const TextStyle(color: Colors.white, fontSize: 16.0),
              ),
              Image.asset(
                imagePath,
                fit: BoxFit.fill,
                height: 30.0,
              )
            ],
          )),
    );
  }
}
