import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        ListTile(
          leading: const CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                'https://ichef.bbci.co.uk/news/976/cpsprodpb/13248/production/_121780487_mel.jpg'),
          ),
          title: const Text(
            'Hello,',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          subtitle: const Text(
            'Timur K.',
            style: TextStyle(
              fontSize: 21,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Card(
            color: Colors.white.withOpacity(0.5),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Stack(
              children: [
                InkWell(
                  onTap: () {},
                  child: const SizedBox(
                    height: 40,
                    width: 40,
                    child: Icon(
                      CupertinoIcons.bell,
                      size: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Positioned(
                    top: 9,
                    right: 7,
                    child: CircleAvatar(
                      backgroundColor: Colors.lightGreen,
                      radius: 3,
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
