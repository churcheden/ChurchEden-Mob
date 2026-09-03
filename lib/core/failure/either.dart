
abstract class Either<L,R>{
  T fold<T>(Function(L l)leftFn,Function(R r)rightFn);
}
class Left<L,R>implements Either<L,R>{
  @override
  T fold<T>(Function(L l) leftFn, Function(R r) rightFn) {
    // TODO: implement fold
    throw UnimplementedError();
  }

}
class Right<L,R> implements Either<L,R>{
  @override
  T fold<T>(Function(L l) leftFn, Function(R r) rightFn) {
    // TODO: implement fold
    throw UnimplementedError();
  }
}