pragma solidity ^0.7.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./interfaces/liquid.sol";

contract UniSwapLiquidWater {
    address private constant FACTORY = 0x60f0B0F1Aa9ecd218D9003fD516343629DCd2556;
    address private constant ROUTER = 0x60f0B0F1Aa9ecd218D9003fD516343629DCd2556;
    address private constant WETH = 0x60f0B0F1Aa9ecd218D9003fD516343629DCd2556;
//i put my address on all three areas lol feel free to send me some ETH or w.e this is jus to teach so no need for me to google the respective addresses
    event Log(string message, uint256 val);
//i made an event called Log to log some uint values
    function addLiquidity(
        address _tokenA,
        address _tokenB,
        uint256 _amountA,
        uint256 _amountB
      ) external {
        IERC(_tokenA).transferFrom(msg.sender, address(this), _amountA);
        IERC(_tokenA).transferFrom(msg.sender, address(this), _amountB);
//first transfer the 2 tokens by calling transfer from both A and B respectively

        IERC(_tokenA).approve(ROUTER, _amountA);
        IERC(_tokenB).approve(ROUTER, _amountB);
//approving UniSwa to spend those tokens with the .approv     
        IUniswapV2Router(ROUTER).addLiquidity(
            _tokenA,
            _tokenB,
            _amountA,
            _amountB,
            1,
            1,
            address(this),
            block.timestamp
         );
        emit Log("amountA", amountA);
        emit Log("amountB", amountB);
        emit Log("liquidity", liquidity);
    }
//first transfer the 2 tokens by calling transfer from both A and B respectively

    function removeLiquitdity(address _tokenA, address _tokenB) external {
        address pair = IUniswapV2Factory(FACTORY).getPair(_tokenA, _tokenB);
   //this pair contract is what actually handles all the trading for token A and B and manages to mints and BURN liquidity tokens!!
        uint256 liquidity = IERC20(pair).balanceOf(address(this));
//Calling erc20 balance of on the contract pair we jus got above now, for input of balance of we pass to this contract        
        IERC20(pair).approve(ROUTER, liquidity);
        IUniswapV2Router(ROUTER).removeLiquitdity(
            _tokenA,
            _tokenB,
            liquidity,
            1,
            1,
            address(this),
            block.timestamp
        );
    //Burning all out liquiedity tokens! and claim max amount of token A and token B AND all the trading fees!!
        emit Log("amountA", amountA);
        emit Log("amountB", amountB);
    }
}
