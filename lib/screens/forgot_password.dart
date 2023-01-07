import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final Color _brandColor = const Color.fromARGB(255, 255, 184, 4);
  final InputBorder _underlinedBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.white, width: 2.0),
      borderRadius: BorderRadius.circular(10.0));
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _digitController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/password_bg_image.jpg'),
          ),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  // stops: [0.1, 0.2],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(244, 255, 184, 4),
                    Color.fromARGB(243, 255, 184, 4),
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
                    'Forgot password?',
                    style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                        fontFamily: 'Dongle',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 15.0),
                const Center(
                  child: Text(
                    'Enter email address below for verification',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontFamily: 'Dongle',
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 15.0),
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
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: inputDecorationWidget(
                          null,
                          icon: Icons.email,
                          identifier: 'Email Address',
                        ),
                      ),
                      const SizedBox(height: 40.0),
                      TextField(
                        style: const TextStyle(
                            color: Colors.white, fontSize: 18.0),
                        cursorColor: _brandColor,
                        cursorHeight: 25.0,
                        // enabled: true,
                        controller: _digitController,
                        obscureText: false,
                        keyboardType: TextInputType.number,
                        // obscuringCharacter: '*',
                        decoration: inputDecorationWidget(
                          null,
                          icon: Icons.lock,
                          identifier: '6-digit-code',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30.0),
                InkWell(
                  onTap: () => null,
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
                        'Verify',
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: _brandColor,
                            fontSize: 35.0,
                            fontFamily: 'Dongle'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.info_outline,
                      size: 25.0,
                      color: Colors.white,
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      'Check your mailbox for\na 6-digit verification code\nto reset your password',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.0,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: const EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.chevron_left,
                            size: 35.0,
                            color: Colors.white,
                          ),
                          Text(
                            'Back',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Dongle',
                              fontSize: 30.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      'YARA',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontFamily: 'Rubik'),
                    ),
                    TextButton(
                      onPressed:
                          () {}, // Help Button Function (hope to make it an Alert Box)
                      child: const Text(
                        'Help',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Dongle',
                          fontSize: 30.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
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
        color: Colors.white,
        size: 25.0,
      ),
      suffixIcon: suffix,
      hintText: identifier,
      focusedBorder: _underlinedBorder,
      enabledBorder: _underlinedBorder,
      border: _underlinedBorder,
    );
  }
}
