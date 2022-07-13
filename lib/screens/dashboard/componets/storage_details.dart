import 'package:admin/constants.dart';
import 'package:admin/screens/dashboard/componets/chart.dart';
import 'package:admin/screens/dashboard/componets/storage_info_card.dart';
import 'package:flutter/material.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
