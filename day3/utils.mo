import Array "mo:base/Array";
import Int "mo:base/Int";
import Option "mo:base/Option";
import Buffer "mo:base/Buffer";

actor {
  public func second_maximum(array : [Int]) : async Int {
    let sorted : [Int] = Array.sort(array, Int.compare);
    // return the second to last element
    return sorted[sorted.size() - 2];
  };

  public func remove_even(array : [Nat]) : async [Nat] {
    let onlyEven : [Nat] = Array.filter(array, func (x : Nat) : Bool {
      return x % 2 == 0;
    });
    return onlyEven;
  };

  func drop<T>(xs : [T], n : Nat) : [T] {
      let buf : Buffer.Buffer<T> = Buffer.fromArray(xs);
      let subBuf : Buffer.Buffer<T> = Buffer.subBuffer(buf, n, xs.size()-n);
      return Buffer.toArray(subBuf);
  }
}