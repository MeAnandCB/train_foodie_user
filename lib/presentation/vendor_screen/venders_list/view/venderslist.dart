import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:train_foodie_user/core/database.dart';

class VendersList extends StatefulWidget {
  const VendersList({super.key, required this.inx, required this.delete});
  final int inx;
  final VoidCallback delete;

  @override
  State<VendersList> createState() => _VendersListState();
}

class _VendersListState extends State<VendersList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            Container(
              height: 170,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 235, 235, 234),
                borderRadius: BorderRadius.circular(10),
                // image: DecorationImage(
                //     image:
                //
                // NetworkImage(
                //         DatabaseData.vendorData[widget.inx]['hotelImage']),
                //     fit: BoxFit.cover),
              ),
              child: CachedNetworkImage(
                imageUrl:
                    DatabaseData.vendorData[widget.inx]['hotelImage'] ?? "",
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                    Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            Positioned(
                right: 5,
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: widget.delete,
                        icon: Icon(Icons.delete))))
          ]),
          SizedBox(
            height: 10,
          ),
          Text(
            DatabaseData.vendorData[widget.inx]['hotelName'],
            style: TextStyle(fontSize: 20),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 5,
          ),
          Text(DatabaseData.vendorData[widget.inx]['hotelDescription']),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(DatabaseData.vendorData[widget.inx]['location']),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 15,
                  ),
                  Text(
                      DatabaseData.vendorData[widget.inx]['rating'].toString()),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
