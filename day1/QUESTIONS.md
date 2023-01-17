# Questions Day 1

## Question 1
A canister can store up to 48GB of data and has 8GB of running memory (used to be 4GB) at the time of writing.
To convince yourself run the following command in the terminal:
```
dfx canister --network ic status --all
```
and read the `memory_allocation` field.

## Question 2
Trying to update an immutable variable declared with "let".

## Question 3
The function change_message is labelled as query but it changes the state of the canister. The "query" keyword should be removed since it's an update function. 
Other error the text variable is initialized with a 0 a Nat, which would create a type error.

## Question 4
False. The query will still take some time to complete and needs to have the async keyword.