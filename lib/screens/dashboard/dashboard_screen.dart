import 'package:admin/constants.dart';
import 'package:admin/screens/dashboard/componets/header.dart';
import 'package:admin/screens/dashboard/componets/my_files.dart';
import 'package:admin/screens/dashboard/componets/recent_files.dart';
import 'package:admin/screens/dashboard/componets/storage_details.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiles(), 
                      SizedBox(height: defaultPadding),
                      RecentFiles(),
                    ],
                  ),
                ),
                SizedBox(
                  width: defaultPadding,
                ),
                Expanded(
                  flex: 2,
                  child: StorageDetails(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

