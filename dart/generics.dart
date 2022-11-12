T sum<T extends num>(T a, T b) {
  return (a + b) as T;
  }

class Stack<T> {
  var stack = <T>[];
  void push(T a) => stack.add(a);
  T pop() => stack.removeLast();
  @override 
  String toString() {
    return stack.toString();
  }
}

void main() {
final c = sum(3.6, 2.4);
final d = sum(3, 4);
print('$c and $d' );  
}

