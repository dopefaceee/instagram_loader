import 'package:flutter/material.dart';
import 'package:instagram_loader/src/models/user.dart';

class InfoCardSuccess extends StatelessWidget {
  final User user;

  InfoCardSuccess({this.user});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: Card(
        elevation: 10,
        color: Color(0xFF5041ab),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(16),
                  height: 80,
                  width: 80,
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    backgroundImage: NetworkImage('${user.profilePicUrlHd}'),
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user.fullName,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Follower : ${user.edgeFollowedBy.count}',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Following : ${user.edgeFollow.count}',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Divider(
              color: Colors.white70,
              height: 1,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  iconSize: 40,
                  icon: Icon(
                    Icons.stacked_bar_chart,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/information');
                  },
                ),
                IconButton(
                  iconSize: 40,
                  icon: Icon(
                    Icons.monetization_on,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/worth');
                  },
                ),
                IconButton(
                  iconSize: 40,
                  icon: Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
