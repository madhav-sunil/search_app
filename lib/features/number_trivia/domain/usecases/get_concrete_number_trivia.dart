import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:search_app/core/error/failures.dart';
import 'package:search_app/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:search_app/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  Future<Either<Failure, NumberTrivia>> call({@required int number}) async {
    return await repository.getConcreteNumberTrivia(number);
  }
}
