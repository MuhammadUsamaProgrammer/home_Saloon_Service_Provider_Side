import 'package:flutter/material.dart';

class StatusItem {
  final String title;
  bool isChecked;

  StatusItem(this.title, this.isChecked);
}

class borromSheett extends StatefulWidget {
  const borromSheett({super.key});

  @override
  State<borromSheett> createState() => _borromSheettState();
}

class _borromSheettState extends State<borromSheett> {
  bool? _isEmergencychecked = false;
  bool? _isHighchecked = false;
  bool? _isMediumchecked = false;
  bool? _isLowchecked = false;
  ExpansionTileController status = ExpansionTileController();
  ExpansionTileController priority = ExpansionTileController();
  ExpansionTileController dateCreated = ExpansionTileController();
  List<StatusItem> statusItems = [
    StatusItem('Open', false),
    StatusItem('In Progress', false),
    StatusItem('Exec Approval Required', false),
    StatusItem('Payment In Process', false),
    StatusItem('Delivery In Process', false),
    StatusItem('Alnair:Doc Approval Required', false),
    StatusItem('Alnair:Ops Approval Required', false),
    StatusItem('Inventory Updates', false),
    StatusItem('Resolved', false),
    StatusItem('Closed', false),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // status tile
          Theme(
            data: Theme.of(context).copyWith(
              dividerColor: Colors.transparent,
              listTileTheme: ListTileTheme.of(context).copyWith(
                dense: true,
                visualDensity: VisualDensity(vertical: -3),
              ),
            ),
            child: ExpansionTile(
              onExpansionChanged: (value) {
                priority.collapse();
                dateCreated.collapse();
              },
              controller: status,
              title: Text(
                'Status',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: statusItems.length,
                  itemBuilder: (context, index) {
                    final statusItem = statusItems[index];
                    return ListTile(
                      dense: true,
                      visualDensity: VisualDensity(vertical: -3),
                      title: Text(
                        statusItem.title,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      trailing: statusItem.isChecked
                          ? Icon(Icons.check, color: Colors.red)
                          : null,
                      onTap: () {
                        setState(() {
                          statusItem.isChecked = !statusItem.isChecked;
                        });
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          Divider(
            thickness: 0.2,
            color: Colors.amber,
          ),
          Theme(
            data: Theme.of(context).copyWith(
              dividerColor: Colors.transparent,
              listTileTheme: ListTileTheme.of(context).copyWith(
                dense: true,
                visualDensity: VisualDensity(vertical: -3),
              ),
            ),
            child: ExpansionTile(
              onExpansionChanged: (value) {
                status.collapse();
                dateCreated.collapse();
              },
              controller: priority,
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
                    _isEmergencychecked = newValue;
                    setState(() {});
                  },
                  activeColor: Colors.pink,
                  checkColor: Colors.purple,
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
                    _isHighchecked = newValue;
                    setState(() {});
                  },
                  activeColor: Colors.pink,
                  checkColor: Colors.purple,
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
                    _isMediumchecked = newValue;
                    setState(() {});
                  },
                  activeColor: Colors.pink,
                  checkColor: Colors.purple,
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
                    _isLowchecked = newValue;
                    setState(() {});
                  },
                  activeColor: Colors.pink,
                  checkColor: Colors.purple,
                ),
                // ... Repeat for other checkboxes
              ],
            ),
          ),
          Divider(
            thickness: 0.2,
            color: Colors.amber,
          ),
          Theme(
            data: Theme.of(context).copyWith(
              dividerColor: Colors.transparent,
              listTileTheme: ListTileTheme.of(context).copyWith(
                dense: true,
                visualDensity: VisualDensity(vertical: -3),
              ),
            ),
            // Add some spacing

            child: ExpansionTile(
              onExpansionChanged: (value) {
                status.collapse();

                priority.collapse();
              },
              controller: dateCreated,
              title: Text(
                'Date Created',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              children: const [
                // Add more ListTile widgets as needed
              ],
            ),
          ),
          Divider(
            thickness: 0.2,
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
