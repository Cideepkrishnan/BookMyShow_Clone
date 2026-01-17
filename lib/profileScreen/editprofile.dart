import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  String selectedGender = '';
  String marriedStatus = 'No';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F8),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new, size: 18),
        ),
        title: const Text(
          "Edit Profile",
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: 1, color: const Color(0xFFE0E0E0)),

            /// PROFILE IMAGE
            Container(
              width: double.maxFinite,
              color: Colors.white,
              padding: const EdgeInsets.all(24),
              child: Column(
                children: const [
                  CircleAvatar(
                    radius: 30,
                    //backgroundColor: Color(0xFFE0E0E0),
                    backgroundImage: AssetImage("assets/images/dp.jpg"),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Add Photo",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),

            /// MOBILE NUMBER
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Mobile Number", style: TextStyle(fontSize: 14)),
                      Text(
                        "Edit Number",
                        style: TextStyle(color: Colors.red, fontSize: 11),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 30,
                    child: TextField(
                      readOnly: true,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.check,
                          color: Colors.green,
                          size: 14,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        hintText: "+91 - 9072462527",
                         hintStyle: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /// EMAIL
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Email Address", style: TextStyle(fontSize: 14)),
                      Text(
                        "Edit Email",
                        style: TextStyle(color: Colors.red, fontSize: 11),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 30,
                    child: TextField(
                      readOnly: true,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.check, color: Colors.green),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        hintText: "cideep671@gmail.com",
                        hintStyle: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            /// PERSONAL DETAILS
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Personal Details",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 16),

                  const Text("First Name*", style: TextStyle(fontSize: 11)),
                  const SizedBox(height: 6),
                  SizedBox(
                    height: 30,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Cideep",
                        hintStyle: TextStyle(fontSize: 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),
                  const Text("Last Name*", style: TextStyle(fontSize: 11)),
                  const SizedBox(height: 6),
                  SizedBox(
                    height: 30,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Krishna",
                        hintStyle: TextStyle(fontSize: 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),
                  const Text(
                    "Birthday (Optional)",
                    style: TextStyle(fontSize: 11),
                  ),
                  const SizedBox(height: 6),
                  SizedBox(
                    height: 30,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "DD/MM/YY",
                        hintStyle: TextStyle(fontSize: 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),
                  
                  const Text(
                    "Identity (Optional)",
                    style: TextStyle(fontSize: 11),
                  ),
                  const SizedBox(height: 8),
                  // Row(
                  //   children: [
                  //     Container(
                  //       padding: const EdgeInsets.symmetric(
                  //         horizontal: 20,
                  //         vertical: 10,
                  //       ),
                  //       decoration: BoxDecoration(
                  //         border: Border.all(color: Colors.grey),
                  //         borderRadius: BorderRadius.circular(8),
                  //       ),
                  //       child: const Text("Woman"),
                  //     ),
                  //     const SizedBox(width: 12),
                  //     Container(
                  //       padding: const EdgeInsets.symmetric(
                  //         horizontal: 20,
                  //         vertical: 10,
                  //       ),
                  //       decoration: BoxDecoration(
                  //         border: Border.all(color: Colors.grey),
                  //         borderRadius: BorderRadius.circular(8),
                  //       ),
                  //       child: const Text("Man"),
                  //     ),
                  //   ],
                  // ),
                    Row(
                    children: [
                      _optionBox('Woman', selectedGender == 'Woman', () {
                        setState(() => selectedGender = 'Woman');
                      }),
                      const SizedBox(width: 12),
                      _optionBox('Man', selectedGender == 'Man', () {
                        setState(() => selectedGender = 'Man');
                      }),
                    ],
                  ),

                  const SizedBox(height: 24),
                  const Text(
                    "Married (Optional)",
                    style: TextStyle(fontSize: 11),
                  ),
                  const SizedBox(height: 8),
                  // Row(
                  //   children: [
                  //     Container(
                  //       padding: const EdgeInsets.symmetric(
                  //         horizontal: 28,
                  //         vertical: 10,
                  //       ),
                  //       decoration: BoxDecoration(
                  //         border: Border.all(color: Colors.grey),
                  //         borderRadius: BorderRadius.circular(8),
                  //       ),
                  //       child: const Text("Yes"),
                  //     ),
                  //     const SizedBox(width: 12),
                  //     Container(
                  //       padding: const EdgeInsets.symmetric(
                  //         horizontal: 28,
                  //         vertical: 10,
                  //       ),
                  //       decoration: BoxDecoration(
                  //         color: const Color(0xFFFFEDEE),
                  //         border: Border.all(color: Colors.red),
                  //         borderRadius: BorderRadius.circular(8),
                  //       ),
                  //       child: const Text(
                  //         "No",
                  //         style: TextStyle(color: Colors.red),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                   Row(
                    children: [
                      _optionBox('Yes', marriedStatus == 'Yes', () {
                        setState(() => marriedStatus = 'Yes');
                      }),
                      const SizedBox(width: 12),
                      _optionBox('No', marriedStatus == 'No', () {
                        setState(() => marriedStatus = 'No');
                      }, highlight: true),
                    ],
                  ),
                
              
                ],
              ),
            ),

            const SizedBox(height: 15),

            /// SAVED ADDRESS
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Your Saved Addresses",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFE0E0E0)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          title: const Text(
                            "Add New Address",
                            style: TextStyle(fontSize: 12),
                          ),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            size: 12,
                          ),
                          onTap: () {},
                        ),
                        Container(height: 1, color: const Color(0xFFE0E0E0)),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            children: const [
                              Icon(Icons.info_outline, size: 18),
                              SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  "Supports only Indian pin codes & mobile numbers.",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 11,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 5),

            /// TERMS
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text(
                    "By proceeding, I agree to ",

                    style: TextStyle(color: Colors.grey, fontSize: 11),
                  ),
                  //SizedBox(width: 1,),
                  Text(
                    "Terms & Conditions",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 11,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red,
                    ),
                  ),
                  Text(
                    " and",
                    style: TextStyle(color: Colors.grey, fontSize: 11),
                  ),

                  Text(
                    " Privacy Policy",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 11,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color:Colors.white,
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 20),
        child: SizedBox(
          width: double.infinity,
          height: 40,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor:Color(0xFFFF7970),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Save Changes", style: TextStyle(fontSize: 13,color: Colors.white)),
          ),
        ),
      ),
    );
  }
  Widget _optionBox(String text, bool selected, VoidCallback onTap,
      {bool highlight = false}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 10,right:10,top: 5,bottom: 5),
        decoration: BoxDecoration(
          color: selected && highlight ? const Color(0xFFFFEBEE) : Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: selected
                ? Colors.red
                : Colors.grey.shade300,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 11,
            color: selected ? Colors.red : Colors.black87,
          ),
        ),
      ),
    );
  }
}
