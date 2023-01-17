# Questions Day 2


## Question 1
The ledger canister is controlled by r7inp-6aaaa-aaaaa-aaabq-cai.

## Question 2
pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe.
16 nodes at time of writing. 

## Question 3

Because both functions are scale linearly we have:

func dissolveDelayBonus(x in months) = 0.01*(x)+0.997
func ageDelayBonus(x in months) = 0.005x+1
func totalVotingPower = AMOUNT MB TOKENS * DISSOLVE DELAY BONUS * AGE BONUS

mbTokens = 10
dd = 48 months
age = 24 months

Applying the functions we have:
10*0.01*(48)+0.997*0.005*24+1 = 5.91964

=> Final result 5.91964

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