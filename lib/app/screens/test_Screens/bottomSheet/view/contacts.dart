import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/buttons/textButton.dart';
import 'package:home_saloon/app/common/mediaQuery/dynamic_MediaQuery.dart';

class Contact extends StatefulWidget {
  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  bool? _isEmergencychecked;
  bool? _isHighchecked;
  bool? _isMediumchecked;
  bool? _isLowchecked;

  @override
  void initState() {
    super.initState();
    _isEmergencychecked = false; // Initialize with the desired initial value
    _isHighchecked = false; // Initialize with the desired initial value
    _isMediumchecked = false; // Initialize with the desired initial value
    _isLowchecked = false; // Initialize with the desired initial value
  }

  void showAddItemBottomSheet(BuildContext context) {
    showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Column(
            children: [
              // filter
              Padding(
                padding: EdgeInsets.only(top: 10, left: 7, right: 7),
                child: ListTile(
                  dense: true,
                  visualDensity: VisualDensity(vertical: -3),
                  title: Text(
                    'Filters',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: Text(
                    'Reset',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(
                          255, 10, 185, 39), // Replace with your desired color
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 2,
                color: Colors.black,
              ),
              // status
              Theme(
                data: Theme.of(context).copyWith(
                  listTileTheme: ListTileTheme.of(context).copyWith(
                    dense: true,
                    visualDensity: VisualDensity(vertical: -3),
                  ),
                ),
                child: ExpansionTile(
                  // onExpansionChanged: (bool) {},
                  title: Text(
                    'Status',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 2,
                color: Colors.black,
              ),
              //  priority
              Theme(
                data: Theme.of(context).copyWith(
                  listTileTheme: ListTileTheme.of(context).copyWith(
                    dense: false,
                    visualDensity: VisualDensity(vertical: -3),
                  ),
                ),
                child: // Add some spacing
                    ExpansionTile(
                  title: Text(
                    'Priority',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  children: [
                    CheckboxListTile(
                      dense: true,
                      visualDensity: VisualDensity(vertical: -3),
                      title: Text(
                        'Emergency',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      value: _isEmergencychecked,
                      onChanged: (bool? newValue) {
                        setState(() {
                          _isEmergencychecked = newValue;
                        });
                      },
                      activeColor: const Color.fromARGB(255, 170, 164, 164),
                      checkColor: Colors.blue,
                    ),

                    CheckboxListTile(
                      dense: true,
                      visualDensity: VisualDensity(vertical: -3),
                      title: Text(
                        'High',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      value: _isHighchecked,
                      onChanged: (bool? newValue) {
                        setState(() {
                          _isHighchecked = newValue;
                        });
                      },
                      activeColor: const Color.fromARGB(255, 170, 164, 164),
                      checkColor: Colors.blue,
                    ),
                    CheckboxListTile(
                      dense: true,
                      visualDensity: VisualDensity(vertical: -3),
                      title: Text(
                        'Medium',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      value: _isMediumchecked,
                      onChanged: (bool? newValue) {
                        setState(() {
                          _isMediumchecked = newValue;
                        });
                      },
                      activeColor: const Color.fromARGB(255, 170, 164, 164),
                      checkColor: Colors.blue,
                    ),
                    CheckboxListTile(
                      dense: true,
                      visualDensity: VisualDensity(vertical: -3),
                      title: Text(
                        'Low',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      value: _isLowchecked,
                      onChanged: (bool? newValue) {
                        setState(() {
                          _isLowchecked = newValue;
                        });
                      },
                      activeColor: const Color.fromARGB(255, 170, 164, 164),
                      checkColor: Colors.blue,
                    ),
                    // Add more CheckboxListTile widgets as needed
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                color: Colors.black,
              ),
              // date created
              Theme(
                data: Theme.of(context).copyWith(
                  listTileTheme: ListTileTheme.of(context).copyWith(
                    dense: true,
                    visualDensity: VisualDensity(vertical: -3),
                  ),
                ),
                child: // Add some spacing
                    ExpansionTile(
                  title: Text(
                    'Date Created',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 2,
                color: Colors.black,
              ),
              // show result
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Slots'),
      ),
      body: Container(
        height: context.MediaQueryHeight(),
        width: context.MediaQueryWidth(),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Button1(
              text: 'jf',
              onTap: () {
                showAddItemBottomSheet(context);
              })
        ]),
      ),
    );
  }
}
