# AdvancedUniSwapLiquidity
trying to teach young blacks about adding and removing liquidity
UNISWAP ADVANCED MATH by MohamGoham aka BrohamGoHam on github wassup!
DONT CONTINUE IF U DONT LIKE NUMBERS
YOU HEAD WILL SPIN LOL
I LUV NUMBERS , MATH AND CRYPTOGRAPHY
AND BLOCKCHAIN SMART CONTRACTS BRING THAT ALL TOGETHER <3

ok lets begin
how much token can i porvide as liquidity into a UniSwap contract?

lets say "a" is the amount of DAI i have
and lets say "b" is the amount of ETH i have
lets say the UniSwap reserve ha "A" amount of DAI
and u guessed it "B" is the amount of ETH uniswap has

still with me? good..

i can put all of my "a" and "b" tokens into uniswap as long as the POOL RATIO remains the same
UNISWAP will ONLY take in amounts that will PRESERVE the reserve RATIO
if i went over the ratio becuase i had 1MILLION DAI tokens and only 1 ETH 
obviously i am WAYY over the ratio of DAI:ETh so uniswap would probably return me
996,623 DAI tokens and only keep 3377 DIA because 
Uniswap uses advanced mathematical equations in thier smart contracts to prevent people like YOU trying to mess up thier RESERVE RATIO lol..

lets say 'y' is the amount of DAI that uniswap accepted from me from my accepted
for ETH well call the amount they took in 'z'
y and z meet the reserve ratio amount that Uni will take in
 
 A / B is the ratio UNi will take in (rememebr A is Uni's DAI amt and B is Uni ETH amount , so just simply divide them to see the ratio is , 
 simply elementary math you should know by now lol!) this is the reserve ratio before we added out tokens to liquidity POOL

 now look at this
 (A + y) / (B + z) = A / B

 using this equation we will figure out what y and z are
 we wil do a simple way i remeber from middle school cross multiplying!!
 A(B + z) = B(A + y)
 now some of the variables CANCEL out so we are left with ...
 A(z) = B(y)
conclusion
if y = a, then b>= z = (B/A) x a
simply if i wanted to put all my token a , then amount of token b i have must be
greater then or equa lto amount of toke B in Uni reserve divided by A the amount of DAI in uni reserve

THIS IS EXACTLY THE MATH UNISWAP USES TO ADD LIQUIDITY 
NOW YOUR ADVANCED !!!
Homework for you
Research UniSwap V2 ROuter and
check out the _addLiquidity function!(it does the equation i just showed you above! cool right?)
and research minting LP if you wanna get advanced like me

function addLiquidity(
  address tokenA,
  address tokenB,
  uint amountADesired,
  uint amountBDesired,
  uint amountAMin,
  uint amountBMin,
  address to,
  uint deadline
) external returns (uint amountA, uint amountB, uint liquidity);

from uniswap website: Adds liquidity to an ERC-20⇄ERC-20 pool.

i want to teach you advanced stuff and make your head spin on purpose 
because then the rest will be a breeze if you can understand this your very intelligent!
now ill show you how to add liquidity AND remove it!
