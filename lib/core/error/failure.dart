import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final String errorMessage;

  const Failure( this.errorMessage);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}
class ServerFailure extends Failure {
  const ServerFailure( super.errorMessage);
}