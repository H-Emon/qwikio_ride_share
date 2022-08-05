import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qwikio_ride_share/const/color.dart';

class SearchLocation extends StatelessWidget {
  final String title;
  final int listNum;
  const SearchLocation({required this.listNum,required this.title,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            title,
            style: TextStyle(
                color: textColorGrey,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          leading: Icon(
            Icons.close,
            size: 35,
            color: textColorGrey,
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Container(
              height: 85,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextField(
                      onTap: () {},
                      decoration: InputDecoration(
                        prefixIcon:
                            Icon(Icons.search, size: 25, color: textColorGrey),
                        border: InputBorder.none,
                        hintText: "Search for a location",
                        hintStyle:
                            TextStyle(color: textColorGrey, fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Recent locations",
                    style: TextStyle(
                        color: textColorGrey,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            ...List.generate(
             listNum,
              (index) => ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.location_pin,
                    color: textColorGrey,
                    size: 25,
                  ),
                ),
                title: Text(
                  "My locatin",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
                ),
                subtitle: Text(
                  "London - United Kingdom",
                  style: TextStyle(color: textColorGrey, fontSize: 12),
                ),
                trailing: Icon(
                  Icons.favorite_border,
                  color: textColorGrey,
                  size: 30,
                ),
              ),
            )
          ],
        ));
    ;
  }
}
