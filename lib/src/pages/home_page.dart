import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instagram_loader/src/notifiers/instagram_provider.dart';
import 'package:instagram_loader/src/notifiers/instagram_state.dart';
import 'package:instagram_loader/src/utils/debouncer.dart';
import 'package:instagram_loader/src/widgets/info_card_success.dart';

class HomePage extends StatelessWidget {
  final TextEditingController igUsername = TextEditingController();

  final Debouncer onSearchDebouncer =
      Debouncer(delay: Duration(milliseconds: 500));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(16, 20, 16, 16),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    'Find instagram user below.',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'poppins',
                      color: Colors.white,
                    ),
                  ),
                ),
                TextField(
                  style: TextStyle(color: Colors.white),
                  controller: igUsername,
                  decoration: InputDecoration(
                    prefix: Text(
                      '@',
                      style:
                          TextStyle(fontFamily: 'poppins', color: Colors.white),
                    ),
                    fillColor: Color(0xFF2c2d39),
                    filled: true,
                    hintText: 'Enter instagram id',
                    hintStyle: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 14,
                      color: Colors.white38,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide:
                          BorderSide(color: Color(0xFF2c2d39), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide:
                          BorderSide(color: Color(0xFF23242e), width: 3),
                    ),
                  ),
                  onChanged: (value) {
                    onSearchDebouncer.debounce(() {
                      context
                          .read(igLoaderProvider)
                          .getInstagramData(username: '$value');
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    ProviderListener<InstagramState>(
                      provider: igLoaderProvider.state,
                      onChange: (state) {},
                      child: Consumer(
                        builder: (context, watch, child) {
                          final state = watch(igLoaderProvider.state);
                          if (state is InstagramInitial) {
                            return Center(
                              child: Container(
                                child: Text(
                                  'Type Anything.',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'poppins',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            );
                          }
                          if (state is InstagramLoading) {
                            return Center(
                              child: Container(
                                child: Text(
                                  'Loading...',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'poppins',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            );
                          }
                          if (state is InstagramLoaded) {
                            return state.rootResponse.loggingPageId == null
                                ? Center(
                                    child: Container(
                                      child: Text(
                                        'No result',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'poppins',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  )
                                : InfoCardSuccess(
                                    user: state.rootResponse.graphData.user,
                                  );
                          }
                          if (state is InstagramError) {
                            return Center(
                              child: Container(
                                child: Text(
                                  'User not found.',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'poppins',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            );
                          }
                          return Center(
                            child: Container(
                              child: Text(
                                'Unknown',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
