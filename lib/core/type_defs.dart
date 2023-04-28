import 'package:fpdart/fpdart.dart';
import 'package:twitter_clone/core/failure.dart';

typedef FutureEither<T> = Future<Either<Failure, T>>;//returns datatype as success
typedef FutureEitherVoid = FutureEither<void>;//success is void
