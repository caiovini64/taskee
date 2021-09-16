enum DomainError {
  somethingWrong,
  cacheFailure,
}

extension DomainErrorExtensions on DomainError {
  String get message {
    switch (this) {
      case DomainError.somethingWrong:
        return 'Something wrong, try again!';
      case DomainError.cacheFailure:
        return 'Something wrong with the memory, try again!';
    }
  }
}
