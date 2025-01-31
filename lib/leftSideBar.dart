import 'package:flutter/material.dart';

class LeftSideBar extends StatefulWidget {
  const LeftSideBar({Key? key}) : super(key: key);

  @override
  _LeftSideBarState createState() => _LeftSideBarState();
}

class _LeftSideBarState extends State<LeftSideBar> {

  int selectedIndex = 0;

  final List<Map<String, dynamic>> menuItems = [
    {"icon": Icons.home_filled, "title": "Home"},
    {"icon": Icons.people, "title": "Employees"},
    {"icon": Icons.checklist, "title": "Attendance"},
    {"icon": Icons.summarize_outlined, "title": "Summary"},
    {"icon": Icons.info_outline, "title": "Information"},
  ];

  @override
  Widget build(BuildContext context) {

    return Container(

      color: Colors.white,

      child: SingleChildScrollView(

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Image.asset("assets/adstack_logo.png"),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(thickness: 2, color: Color(0xffc2baba)),
            ),

            const SizedBox(height: 5),

            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.orange,
                  width: 4,
                ),
              ),
              child: ClipOval(
                child: Image.asset(
                  "assets/user.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              "Pooja Mishra",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),

            ),
            const SizedBox(height: 10),

            SizedBox(
              width: 120,
              height: 35,
              child: ElevatedButton.icon(
                onPressed: () {},
                label: const Text(
                  "Admin",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: const BorderSide(
                      color: Color(0xffaaa1e8),
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(thickness: 2, color: Color(0xffc2baba)),
            ),

            // const SizedBox(height: 5),

            Column(
              children: [

                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: menuItems.length,
                  itemBuilder: (context, index) {

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: selectedIndex == index
                              ? Colors.grey[200] // Selected background color
                              : Colors.transparent, // Default background color
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(25),  // Circular edge on top-right
                            bottomLeft: Radius.circular(25), // Circular edge on bottom-right
                          ),
                        ),
                        child: ListTile(
                          leading: Icon(
                            menuItems[index]['icon'],
                            color: Colors.black, // Default icon color
                          ),
                          title: Text(
                            menuItems[index]['title'],
                            style: TextStyle(
                              color: Colors.black, // Default text color
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),

                ExpansionTile(
                  title: Text(
                    "WORKSPACES",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  trailing: Icon(Icons.add),
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 28.0),
                      child: ExpansionTile(title: Text("Adstacks")),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 28.0),
                      child: ExpansionTile(title: Text("Finance")),
                    ),

                  ],
                ),

              ],
            ),

            // SizedBox(height: ,),

            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black, // Default icon color
              ),
              title: Text(
                "Setting",
                style: TextStyle(
                  color: Colors.black, // Default text color
                ),
              ),
            ),

            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.black, // Default icon color
              ),
              title: Text(
                "Logout",
                style: TextStyle(
                  color: Colors.black, // Default text color
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
