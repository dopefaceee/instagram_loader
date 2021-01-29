import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instagram_loader/src/notifiers/instagram_provider.dart';
import 'package:instagram_loader/src/notifiers/instagram_state.dart';
import 'package:instagram_loader/src/utils/debouncer.dart';

class HomePage extends StatelessWidget {
  final TextEditingController igUsername = TextEditingController();

  final Debouncer onSearchDebouncer =
      Debouncer(delay: Duration(milliseconds: 500));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Insta Editor'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: igUsername,
              decoration: InputDecoration(hintText: 'Enter instagram id'),
              onChanged: (value) {
                onSearchDebouncer.debounce(() {
                  context
                      .read(igLoaderProvider)
                      .getInstagramData(username: '$value');
                });
              },
            ),
            SizedBox(
              height: 80,
            ),
            ProviderListener<InstagramState>(
              provider: igLoaderProvider.state,
              onChange: (state) {},
              child: Consumer(
                builder: (context, watch, child) {
                  final state = watch(igLoaderProvider.state);
                  if (state is InstagramInitial) {
                    return Container(
                      child: Text('Type Anything.'),
                    );
                  }
                  if (state is InstagramLoading) {
                    return Container(
                      child: Text('Loading...'),
                    );
                  }
                  if (state is InstagramLoaded) {
                    return state.rootResponse.loggingPageId == null
                        ? Container(
                            child: Text('User not found.'),
                          )
                        : Container(
                            child: Text(
                                'Loaded. ${state.rootResponse.graphData.user.biography}'),
                          );
                  }
                  if (state is InstagramError) {
                    return Container(
                      child: Text('User not found.'),
                    );
                  }
                  return Container(
                    child: Text('Unknown'),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
