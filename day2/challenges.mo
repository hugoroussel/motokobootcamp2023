import List "mo:base/List";
import Iter "mo:base/Iter";
import Text "mo:base/Text";
import Array "mo:base/Array";


actor {
    // 1. Write a function average_array that takes an array of integers and returns the average value of the elements in the array.
    public func average_array(array : [Int]) : async Int {
        var sum : Int = 0;
        for (value in array.vals()){
            sum := sum + value;
        };
        return sum/array.size();
    };

    // 2. Character count: Write a function that takes in a string and a character, and returns the number of occurrences of that character in the string.
    public func count_character(t: Text, c: Char) : async Int {
        var occurrences : Int = 0;
        let chars = t.chars();
        for (char in chars) {
            if (char == c) {
                occurrences := occurrences + 1;
            }
        };
        return occurrences;
    };

    // 3. Write a function factorial that takes a natural number n and returns the factorial of n.
    public func factorial(n: Nat) : async Nat {
        if (n == 0) {
            return 1;
        } else {
            let res = await factorial(n - 1);
            return n * res;
        }
    };

    // 4. Write a function number_of_words that takes a sentence and returns the number of words in the sentence.
    public func number_of_words(sentence: Text) : async Nat {
        let words = Text.split(sentence, #char ' ');
        var count : Nat = 0;
        for (word in words) {
            count := count + 1;
        };
        return count;
    };

    // 5. Write a function find_duplicates that takes an array of natural numbers and returns a new array containing all duplicate numbers. The order of the elements in the returned array should be the same as the order of the first occurrence in the input array.
    public func find_duplicates(a : [Nat]) : async [Nat] {
        var duplicates : [Nat] = [];
        var seen : [Nat] = [];
        for (value in a.vals()) {
            switch(Array.find<Nat>(seen, func x = x == value))
            {
                case(null){
                    seen := Array.append(seen, [value]);
                };
                case(?Nat){
                    duplicates := Array.append(duplicates, [value]);
                };
            }
        };
        return duplicates;  
    };

    // 6. Write a function convert_to_binary that takes a natural number n and returns a string representing the binary representation of n.
    public func convert_to_binary(n : Nat) : async Text {
        var m0 = n;
        var bits = "";
        while(m0 > 0){
            let remainder = m0 % 2;
            m0 := m0 / 2;
            if(remainder == 1){
                bits := "1" # bits;
            } else {
                bits := "0" # bits;
            };
        };
        return(bits)
    };
 

}

