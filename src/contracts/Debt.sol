pragma solidity 0.5.8;

import "@openzeppelin/contracts/token/ERC721/ERC721Full.sol";

contract Debt is ERC721Full {
  string[] public debt;
  mapping(string => bool) _contractExists;

  constructor() ERC721Full("Debt", "DEBT") public{
  }

  //e.g. color = "#ffffff"
  function mint(string  memory _contractNumber) public {
    //Require unique color
    require(!_contractExists[_contractNumber], "Token with this color is already defined");
    //Color - add it
    uint _id = debt.push(_contractNumber); //push returns the length of the new array
    //Call the mint function
    _mint(msg.sender, _id);
    //Color - track it
    _contractExists[_contractNumber] = true;
  }

  function setTokenURI(uint256 tokenId, string memory _tokenURI) public {
    _setTokenURI(tokenId, _tokenURI);
  }

  //tokenURI function obtains the url

}