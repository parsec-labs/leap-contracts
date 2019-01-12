pragma solidity 0.5.2;

import "../../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "../NativeToken.sol";

/**
 * @title SimpleToken
 * @dev SimpleToken is a NativeToken with premine. Used for tests.
 */
contract SimpleToken is NativeToken {

  uint256 public constant INITIAL_SUPPLY = 10000000000000000000000; // 10000 * 10^18

  /**
   * @dev Constructor that gives msg.sender all of existing tokens.
   */
  constructor() public NativeToken("SimpleToken", "SIM", 18) {
    _mint(msg.sender, INITIAL_SUPPLY);
  }

}
