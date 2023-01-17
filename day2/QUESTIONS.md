# Questions Day 2


## Question 1
The ledger canister is controlled by r7inp-6aaaa-aaaaa-aaabq-cai.

## Question 2
pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe.
16 nodes at time of writing. 
## Question 3


## Question 4
There is the use of the "toText" function without importing the base library. 

## Question 5
The problems are multiple. First the initialization of the array. 
The initialization should be instead of:

```
var languages : [var Text] = [var "English", "German", "Chinese", "Japanese", "French"];
```

The second problem is that the `show_languages` function is public and returns a mutable array. Public functions should return only immutable data. 

## Question 6 
Here again the problems are multiple. First there is the call of an array method while the array library is not imported. 
Secondly the `append` returns a new array that is then assigned to an immutable variable `languages`.