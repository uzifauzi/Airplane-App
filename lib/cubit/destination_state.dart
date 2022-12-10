part of 'destination_cubit.dart';

abstract class DestinationState extends Equatable {
  const DestinationState();

  @override
  List<Object> get props => [];
}

class DestinationInitial extends DestinationState {}

class DestinationLoading extends DestinationState {}

class DestinationSuccess extends DestinationState {
  // kalau sukses, dia akan mengembalikan data destination yang bentuknya list
  final List<DestinationModel> destinations;

  DestinationSuccess(this.destinations);

  @override
  // TODO: implement props
  List<Object> get props => destinations;
}

class DestinationFailed extends DestinationState {
  final String error;

  DestinationFailed(this.error);

  @override
  // TODO: implement props
  List<Object> get props => [error];
}
