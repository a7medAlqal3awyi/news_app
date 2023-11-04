import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:news_app/core/error/failure.dart';

abstract class BaseUseCase<T, Parameters> {
  Future<Either<Failure, T>> call(Parameters parameters);
}

class NoParameter extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}
