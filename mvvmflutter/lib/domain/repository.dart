
import 'package:dartz/dartz.dart';
import '/data/network/failure.dart';
import '/data/request/request.dart';
import '/domain/model.dart';

abstract class Repository{
  Future<Either<Failure,Authentication>> login(LoginRequest loginRequest);
}