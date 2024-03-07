abstract class Failure {
  const Failure();
}

class CommonFailure implements Failure {
  const CommonFailure(this.e);

  final Exception e;
}

class DataSourceFailure<T> implements Failure {
  const DataSourceFailure(this.e);

  final T e;
}

abstract class FeatureFailure implements Failure {
  const FeatureFailure();
}
