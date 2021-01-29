import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instagram_loader/src/notifiers/instagram_state_notifier.dart';
import 'package:instagram_loader/src/utils/api_manager.dart';

final apiManagerProvider = Provider<ApiManager>((ref) => ApiManager());

final igLoaderProvider = StateNotifierProvider<InstagramStateNotifier>(
  (ref) => InstagramStateNotifier(
    ref.watch(apiManagerProvider),
  ),
);
