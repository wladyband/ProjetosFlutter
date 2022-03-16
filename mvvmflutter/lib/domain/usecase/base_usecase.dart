import 'package:dartz/dartz.dart';
import 'package:mvvmflutter/data/network/network_main.dart';

abstract class BaseUseCase<In, Out> {
  Future<Either<Failure, Out>> execute(In input);
}