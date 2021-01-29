import 'package:instagram_loader/src/notifiers/instagram_state.dart';
import 'package:instagram_loader/src/utils/api_manager.dart';
import 'package:state_notifier/state_notifier.dart';

class InstagramStateNotifier extends StateNotifier<InstagramState> {
  final ApiManager apiManager;

  InstagramStateNotifier(this.apiManager) : super(InstagramInitial());

  void getInstagramData({String username}) async {
    state = InstagramLoading();
    try {
      final igData = await apiManager.getInstagramData(username: username);
      print('${igData.loggingPageId}');
      state = InstagramLoaded(igData);
    } catch (e) {
      print(e.toString());
      state = InstagramError('Failed to fetch.');
    }
  }
}
