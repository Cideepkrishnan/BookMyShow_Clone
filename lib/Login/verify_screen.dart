import 'package:book_my_show/Home/Theter_Location/theter_location.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginMobileScreen extends StatefulWidget {
  const LoginMobileScreen({super.key});

  @override
  State<LoginMobileScreen> createState() => _LoginMobileScreenState();
}

class _LoginMobileScreenState extends State<LoginMobileScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _phonecontroller = TextEditingController();
  // String _errorText = '';

  void dispose(){
    _phonecontroller;
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
                
              Text(
                'Login with Mobile Number',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Mobile Number',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 10),
                
              TextFormField(
                keyboardType: TextInputType.phone,
                controller: _phonecontroller,
                //  inputFormatters: [
                //  FilteringTextInputFormatter.digitsOnly,
                //  LengthLimitingTextInputFormatter(10)
                // ],
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Text(
                      '🇮🇳 +91',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                validator:(value){
                  if(value==null || value.isEmpty){
                    return "please enter the number";
                  }
                   if (value.length < 10) {
                        return 'Phone Number must be 10 numbers';
                      }
                      return null;
                }
                
              ),
              // if (_errorText.isNotEmpty)
              //   Padding(
              //     padding: const EdgeInsets.only(top: 8, left: 10),
              //     child: Text(
              //       _errorText,
              //       style: TextStyle(color: Colors.red, fontSize: 12),
              //     ),
              //   ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: ()async {
                    if(_formKey.currentState!.validate()){
                      SharedPreferences _prefs = await SharedPreferences.getInstance();
                      await _prefs.setString("number", _phonecontroller.text.trim());
                      await _prefs.setBool('isloggedin', true);
                         showLocationBottomSheet(context);
                    }
                    // if (_phonecontroller.text.length == 10) {
                    //   setState(() {
                    //     _errorText = '';
                    //   });
                      // showLocationBottomSheet(context);
                    // } else {
                    //   setState(() {
                    //     _errorText = 'Please enter 10 digits';
                    //   });
                    // }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[800],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Verify',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

void showLocationBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.white,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    builder: (context) {
      return Container(
        height: 450,
        padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Container(
              width: 80,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(10),
              ),
            ),

            const SizedBox(height: 30),
            Image.asset(
              'assets/images/location_illustration.png',
              height: 150,
              fit: BoxFit.contain,
            ),

            const SizedBox(height: 20),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Hey there! Where are you?',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 12),

            // subtitle
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Don't miss out on Movies, Events, Activities & a lot more that's happening near you!",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 13, color: Colors.grey[700]),
              ),
            ),

            const SizedBox(height: 30),

            // Detect location button
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE64B5D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Detect My Location',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 14),

            // Select manually button
            SizedBox(
              width: double.infinity,
              height: 45,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return CitySelector();
                      },
                    ),
                     (route) => false,
                  );
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0xFFE64B5D), width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Select Manually',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFE64B5D),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),
          ],
        ),
      );
    },
  );
}
