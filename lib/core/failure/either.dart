
abstract class Either<L,R>{
  T fold<T>(Function(L l)leftFn,Function(R r)rightFn);
}
class Left<L,R>implements Either<L,R>{
  final L value;

  new(this.value);
  @override
  T fold<T>(Function(L l) leftFn, Function(R r) rightFn) {
    return leftFn(value);
  }

}
class Right<L,R> implements Either<L,R>{
  final R value;

  new(this.value);
  @override
  T fold<T>(Function(L l) leftFn, Function(R r) rightFn) {

    return rightFn(value);
  }
}