import 'package:fitness/pages/home.dart';
import 'package:fitness/pages/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage('https://scontent.fmnl8-5.fna.fbcdn.net/v/t39.30808-6/471665945_2022237548243797_5549399855935978075_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeFaoLCwhAo_DJpe2JhGxRH_Sg6m5VJ9pYpKDqblUn2lile6up4W0XtzjsdOuiuCnsKoyw_3F2CgzB_tnFEXnnla&_nc_ohc=D8ZmAf5-2VkQ7kNvwELcCGo&_nc_oc=AdkvbuAMcp9VzR0DlF8ZUjHeKeB0LtzZ0Ozt5uXC1W-S092xQEl6kb3qzRYeoETP49w&_nc_zt=23&_nc_ht=scontent.fmnl8-5.fna&_nc_gid=33NR0_b8X14O8kcV5876ZQ&oh=00_AfKYWy2Icidns-Vfy2RX2-RtrAz_Bo_CA-RfwcDoi0FKRg&oe=682C8082'),
              ),
              SizedBox(height: 16),
              Text(
                'Ernest Vincent S. Malecosio',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'vmalecosio@gmail.com',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Text(
                  'A tryhard learner of coding, always eager to improve and build meaningful applications.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => HomePage()));
          } else if (index ==1) {
            Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => ProfilePage()));
          }
          else if (index ==2) {
            Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => LoginPage()));
          }
        },
        selectedItemColor: const Color(0xff9DCEFF),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout',
          ),
        ],
      ),
    );
  }
}
