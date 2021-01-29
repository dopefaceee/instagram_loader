import 'package:equatable/equatable.dart';
import 'package:instagram_loader/src/models/root_response.dart';

abstract class InstagramState extends Equatable {
  InstagramState();
}

class InstagramInitial extends InstagramState {
  InstagramInitial();

  @override
  List<Object> get props => [];
}

class InstagramLoading extends InstagramState {
  InstagramLoading();

  @override
  List<Object> get props => [];
}

class InstagramLoaded extends InstagramState {
  final RootResponse rootResponse;
  InstagramLoaded(this.rootResponse);

  @override
  List<Object> get props => [rootResponse];
}

class InstagramError extends InstagramState {
  final String message;
  InstagramError(this.message);

  @override
  List<Object> get props => [message];
}
