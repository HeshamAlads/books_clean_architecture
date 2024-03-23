import 'package:dartz/dartz.dart';
import 'package:u_clean_bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:u_clean_bookly_app/Features/home/domain/repos/home_repo.dart';
import 'package:u_clean_bookly_app/core/errors/failure.dart';
import 'package:u_clean_bookly_app/core/use_cases/use_case.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchNewestBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async {
    return await homeRepo.fetchNewestBooks();
  }
}
