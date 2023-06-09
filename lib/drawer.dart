import  'package:flutter/material.dart';

import 'dashboard.dart';

void main()=>runApp(const MaterialApp(
  home: SideDrawer(),
));
class SideDrawer extends StatefulWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  State<SideDrawer> createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  bool showOperations = false;
  bool showSales=false;
  bool showData=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('iSprout'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const Padding(padding: EdgeInsets.all(20.0)),
            const DrawerHeader(
              child: Image(
                image:AssetImage('isp.png'),
                fit: BoxFit.none,

              ),
            ),
            ListTile(
              title: const Text('DashBoard'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoard()));
              },
            ),
            ListTile(
              title: const Text('Operations'),
              onTap: () {
                setState(() {
                  showOperations=!showOperations;
                });
              },
            ),
            if (showOperations)...[
              Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    title: const Text('ServiceRequest'),
                    onTap: () {},
                  )),
              Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    title: const Text('Bookings'),
                    onTap: () {},
                  )),
              Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    title: const Text('Event Managements'),
                    onTap: () {},
                  )),
              Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    title: const Text('Visitor log'),
                    onTap: () {},
                  )),
              Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    title: const Text('Parking'),
                    onTap: () {},
                  )),
              Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    title: const Text('Stock'),
                    onTap: () {},
                  )),
            ],
            ListTile(
              title: const Text('Sales'),
              onTap: () {
                setState(() {
                  showSales=!showSales;
                });
              },
            ),
            if (showSales) ...[
              Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    title: const Text('Leads'),
                    onTap: () {},
                  )),
              Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    title: const Text('Broker Fee'),
                    onTap: () {},
                  )),

            ],
            ListTile(
              title: const Text('Data'),
              onTap: () {
                setState(() {
                  showData=!showData;
                });
              },
            ),
            if (showData)...[
              Padding(
                padding:const EdgeInsets.only(left: 20),
                child: ListTile(
                  title: const Text('Locations'),
                  onTap: (){},
                ),
              ),
              Padding(
                padding:const EdgeInsets.only(left: 20),
                child: ListTile(
                  title: const Text('centers'),
                  onTap: (){},
                ),
              ),
              Padding(
                padding:const EdgeInsets.only(left: 20),
                child: ListTile(
                  title: const Text('Assets'),
                  onTap: (){},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  title: const Text('Images'),
                  onTap: (){},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  title: const Text('Company'),
                  onTap: (){},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  title: const Text('Client Employees'),
                  onTap: (){},
                ),
              ),
              Padding(padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  title: const Text('Private Offices'),
                  onTap: (){},
                ),
              ),
              Padding(padding: const EdgeInsets.only(left: 20),
                child:ListTile(
                  title: const Text('Conference Rooms'),
                  onTap: (){},
                ) ,
              ),
              Padding(padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  title: const Text('parking'),
                  onTap: (){},
                ),),
              Padding(padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  title: const Text('Brokers'),
                  onTap: (){},

                ),),
              Padding(padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  title: const Text('vendors'),
                  onTap: (){},
                ),
              ),
              Padding(padding: const EdgeInsets.only(left: 20),
                child:ListTile(
                  title: const Text('Departments'),
                  onTap: (){},
                ) ,),
              Padding(padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  title: const Text('Employees'),
                  onTap: (){},
                ),)

            ]
          ],
        ),
      ),
      body: Column(
        children: const <Widget>[],
      ),
    );
  }
}


