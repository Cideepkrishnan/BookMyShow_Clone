import 'package:book_my_show/profileScreen/youroder.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi Cideep!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 2),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Text(
                    "Edit Profile",
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.arrow_forward_ios, size: 8, color: Colors.grey),
                ],
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundColor: Color(0xFFF2F3F5),
              backgroundImage: AssetImage("assets/images/dp.jpg"),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 4),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Orders(),));
            },
            child: Container(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.shopping_bag_outlined, color: Colors.black),
                title: Text(
                  "Your Orders",
                  style: const TextStyle(fontSize: 13,
                    fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  "View all your bookings & purchases",
                  style: const TextStyle(fontSize: 11),
                ),
                trailing: const Icon(Icons.chevron_right),
              ),
            ),
          ),
           Container(
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.tv_outlined,color: Colors.black),
              title: Text(
                "Stream Library",
                style: const TextStyle(fontSize: 13,fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                "Rented & Purchased Movies",
                style: const TextStyle(fontSize: 11),
              ),
              trailing: const Icon(Icons.chevron_right),
            ),
          ),
           Container(
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.credit_card, color: Colors.black),
              title: Text(
               "Play Credit Card",
                style: const TextStyle(fontSize: 13,fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
               "View your Play Credit Card details and offers",
                style: const TextStyle(fontSize: 11),
              ),
              trailing: const Icon(Icons.chevron_right),
            ),
          ),
           Container(
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.help_outline, color: Colors.black),
              title: Text(
               "Help Centre",
                style: const TextStyle(fontSize: 13,fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                "Need help or have questions?",
                style: const TextStyle(fontSize: 11),
              ),
              trailing: const Icon(Icons.chevron_right),
            ),
          ),
           Container(
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.settings_outlined, color: Colors.black),
              title: Text(
               "Accounts & Settings",
                style: const TextStyle(fontSize: 13,fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
               "Location, Payments, Permissions & More",
                style: const TextStyle(fontSize: 11),
              ),
              trailing: const Icon(Icons.chevron_right),
            ),
          ),
          Divider(height: 1, thickness: 6),
           Container(
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.card_giftcard, color: Colors.black),
              title: Text(
                "Rewards",
                style: const TextStyle(fontSize: 13,fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
               "View your rewards & unlock new ones",
                style: const TextStyle(fontSize: 11),
              ),
              trailing: const Icon(Icons.chevron_right),
            ),
          ),
           Container(
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.local_offer_outlined,color: Colors.black),
              title: Text(
               "Offers",
                style: const TextStyle(fontSize: 13,fontWeight: FontWeight.w600),
              ),
              trailing: const Icon(Icons.chevron_right),
            ),
          ),
           Container(
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.redeem_outlined, color: Colors.black),
              title: Text(
               "Gift Cards",
                style: const TextStyle(fontSize: 13,fontWeight: FontWeight.w600),
              ),
              
              trailing: const Icon(Icons.chevron_right),
            ),
          ),
           Container(
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.fastfood_outlined, color: Colors.black),
              title: Text(
                "Food & Beverages",
                style: const TextStyle(fontSize: 13,fontWeight: FontWeight.w600),
              ),
            
              trailing: const Icon(Icons.chevron_right),
            ),
          ),
           Container(
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.event_available_outlined, color: Colors.black),
              title: Text(
               "List your Show",
                style: const TextStyle(fontSize: 13,fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
              "Got an event? Partner with us",
                style: const TextStyle(fontSize: 11),
              ),
              trailing: const Icon(Icons.chevron_right),
            ),
          ),
          SizedBox(height: 24),
          Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Share", style: TextStyle(fontSize: 12, color: Colors.grey),),
            SizedBox(width: 16),
            Text("|", style: TextStyle(fontSize: 12, color: Colors.grey),),
            SizedBox(width: 16),
            Text("Rate Us", style: TextStyle(fontSize: 12, color: Colors.grey),),
            SizedBox(width: 16),
            Text("|", style: TextStyle(fontSize: 12, color: Colors.grey),),
            SizedBox(width: 16),
            Text("BookAChange", style: TextStyle(fontSize: 12, color: Colors.grey),),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Terms & Conditions", style: TextStyle(fontSize: 12, color: Colors.grey),),
            SizedBox(width: 16),
            Text("|", style: TextStyle(fontSize: 12, color: Colors.grey),),
            SizedBox(width: 12),
            Text("Privacy Policy", style: TextStyle(fontSize: 12, color: Colors.grey),),
          ],
        ),
      ],
    ),

      const SizedBox(height: 12),

          const Center(
            child: Column(
              children: [
                Text(
                  "App Version: 18.0.7",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Text(
                  "Update App",
                  style: TextStyle(fontSize: 12, color: Colors.blue),
                ),
              ],
            ),
          ),

          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
