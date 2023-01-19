import List "mo:base/List";
import Bool "mo:base/Bool";
import Principal "mo:base/Principal";
import Buffer "mo:base/Buffer";

actor {

  // use a hashmap? 
  func unique<T>(l : List.List<T>) : List.List<T> {
    return List.reverse(l);
  };

  func reverse<T>(l : List.List<T>) : List.List<T> {
    return List.reverse(l);
  };

  public shared ({caller}) func is_anonymous() : async Bool {
    Principal.isAnonymous(caller)
  };

  func find_in_buffer<T>(buf: Buffer.Buffer<T>, val: T) : async Nat {
    // how to check equality of T?
    let res = Buffer.indexOf(val, buf, <T>.eq);
    // switch on result
  };

  let usernames = HashMap.HashMap<Principal, Text>(0, Principal.equal, Principal.hash);

  public shared ({ caller }) func add_username(name : Text) : async () {
    usernames.put(caller, name);
  };

  public query func get_usernames() : async [(Principal, Text)] {
    return(Iter.toArray(usernames.entries()));
  };  
}