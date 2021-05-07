pragma solidity ^0.7.0;

// https://uniswap.org/docs/v2/smart-contracts
//we need to cal the Uniswap V2 router to provide liquidity! simple!
interface IUniswapV2Router {
    function getAmountsOut(uint256 amountIn, address[] memory path)
     external 
     view
     returns (uint256[] memory amount);
    
    function swapExactTokensForTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] callData path,
        address to,
        uint256 deadline
      ) external returns (uint256[] memory amounts);
      
      //this the function we calling addLiquidity
    function addLiquidity(
        address tokenA,
        address tokenB,
        uint256 amountADesired,
        uint256 amountBDesired.
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
        )
        //for the input this function takes in the 2 address of the tokens,
        //my example well be doing DAI and Wrapped ETh aka WETH, it also says in amount desired is amt we are willing to put into
        //into uniswap and the minimum amt or else the function will fail
        
        external 
        returns (
            uint256 amountA,
            uint256 amountB,
            uint256 liquidity
          );
        //3 ouptuts that get returnned if the addLiquidity function is executed correctly
        
    function removeLiquidity(
        address tokenA,
        address tokenB,
        uint256 liquidity,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
      ) external returns (uint256 amountA, uint256 amountB)
}