import 'package:admin/constants.dart';
import 'package:admin/screens/dashboard/componets/chart.dart';
import 'package:admin/screens/dashboard/componets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                  child: Container(
                    color: Colors.white,
                    height: 500,
                  ),
                ),
                SizedBox(
                  width: defaultPadding,
                ),
                Expanded(
                  
                  flex: 2,
                  child: Container(
                    
                    padding: EdgeInsets.all(defaultPadding),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Storage Details",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: defaultPadding,
                        ),
                        Chart(),
                        StorageInfoCard(
                          title: "Documents",
                          svgSrc: "assets/icons/Documents.svg",
                          numOfFiles: 1239,
                          amountOfFiles: "1.5GB",
                        ),
                        StorageInfoCard(
                          title: "Media",
                          svgSrc: "assets/icons/media.svg",
                          numOfFiles: 1239,
                          amountOfFiles: "15.8GB",
                        ),
                        StorageInfoCard(
                          title: "Other Files",
                          svgSrc: "assets/icons/folder.svg",
                          numOfFiles: 1239,
                          amountOfFiles: "1.5GB",
                        ),
                        StorageInfoCard(
                          title: "Unknown",
                          svgSrc: "assets/icons/unknown.svg",
                          numOfFiles: 1239,
                          amountOfFiles: "1.5GB",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard({
    Key key,
    @required this.title,
    @required this.svgSrc,
    @required this.amountOfFiles,
    @required this.numOfFiles,
  }) : super(key: key);

  final String title, svgSrc, amountOfFiles;
  final int numOfFiles;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: primaryColor.withOpacity(0.15),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(svgSrc),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "$numOfFiles files",
                    style: Theme.of(context).textTheme.caption.copyWith(
                          color: Colors.white70,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Text(amountOfFiles),
        ],
      ),
    );
  }
}
