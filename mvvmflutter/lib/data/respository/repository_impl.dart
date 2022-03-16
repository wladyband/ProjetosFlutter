import 'package:dartz/dartz.dart';

import 'package:mvvmflutter/data/network/network_info.dart';
import 'package:mvvmflutter/data/network/network_main.dart';
import 'package:mvvmflutter/data/request/request.dart';
import 'package:mvvmflutter/domain/model.dart';
import 'package:mvvmflutter/data/mapper/mapper.dart';
import 'package:mvvmflutter/data/data_source/remote_data_source.dart';

import '../../domain/repository.dart';

class RepositoryImpl extends Repository {
  RemoteDataSource _remoteDataSource;
  NetworkInfo _networkInfo;

  RepositoryImpl(this._remoteDataSource, this._networkInfo);

  @override
  Future<Either<Failure, Authentication>> login(
      LoginRequest loginRequest) async {
    if (await _networkInfo.isConnected) {
      // its safe to call the API
      final response = await _remoteDataSource.login(loginRequest);

      if (response.status == 0) // success
          {
        // return data (success)
        // return right
        return Right(response.toDomain());
      } else {
        // return biz logic error
        // return left
        return Left(Failure(
            409, response.message ??
            "foi encontrado uma lógica de erro do lado da API"));
      }
    } else {
      // return connection error
      return Left(Failure(501, "Por favor, verifique sua conexão à internet"));
    }
  }
}