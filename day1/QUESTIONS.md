# Questions Day 1

## Question 1
The stable memory of a canister is 4 GB and 32 GB on the experimental stable memory

## Question 2
Trying to update an immutable variable declared with "let".

## Question 3
The function change_message is labelled as query but it changes the state of the canister. The "query" keyword should be removed since it's an update function. 
Other error the text variable is initialized with a 0 a Nat, which would create a type error.

## Question 4
False. The query will still take some time to complete and needs to have the async keyword.