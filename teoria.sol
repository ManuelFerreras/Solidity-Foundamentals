// Indicar Version de Solidity a Usar
pragma solidity ^0.8.0; // Version >=0.8.0 <0.9.0

// Also Valid:
pragma solidity >=0.8.0 <0.9.0;


// License Identifier
// SPDX-License-Identifier: UNLICENSED



//  Create a contract:
contract ContractNameHere {

    // Variable that stores an address
    address owner;

    // Constructor of the Contract (Only called once):
    constructor() {

        // Sets the owner of the contract as the address who deployed it
        owner = msg.sender;

    }

    function globalFunctions(uint256 _blockNumber) public payable {

        // Returns the hash of the given block
        blockhash(_blockNumber);

        // Returns the miner's, who is processing the block, address
        block.coinbase;

        // Returns the current block's difficulty
        block.difficulty;

        // Returns the current block's gas limit
        block.gaslimit;

        // Returns the current block's number
        block.number;

        // Returns the current block's timestamp in seconds
        block.timestamp;

        // Returns transaction's sent data
        msg.data;

        // Returns the remaining gas
        gasleft();

        // Returns the message sender, the address who called the function
        msg.sender;

        // Returns transaction data's first 4 bytes
        msg.sig;

        // Returns WEI number sent in the call
        msg.value;

        // Returns the transaction gas price
        tx.gasprice;

        // Returns the original sender of the transaction
        tx.origin;

    }

}




contract funciones_globales{
    
    //Funcion msg.sender
    function MsgSender() public view returns(address){
        return msg.sender;
    }
    
    //funcion block.coinbase
    function BlockCoinbase() public view returns(address){
        return block.coinbase;
    }
    
    //funcion block.difficulty
    function BlockDifficulty() public view returns(uint){
        return block.difficulty;
    }
    
    //funcion block.number 
    function BlockNumber() public view returns(uint){
        return block.number;
    }
    
    //Funcion msg.sig 
    function MsgSig() public pure returns(bytes4){
        return msg.sig;
    }
    
    //funcion tx.gaspricev
    function txGasPrice() public view returns(uint){
        return tx.gasprice;
    }
    
}



contract KeccakTeoria {
    // This is a CryptoGraphic Function

    // Syntax:
    //      abi.encodePacked(<value>)
    // Returns arguments given as bytes


    // Syntax:
    //      keccak256(<values>);
    // Computes the arguments given's hashes
    // Based on sha256 algorithm
    // Returns 32bytes
    bytes32 foo = keccak256(abi.encodePacked("hola"));

}



contract hash{
    
    //Computo del hash de un string
    function calcularHash(string memory _cadena) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_cadena));
    }
    
    //Computo del hash de un string, un entero y una direccion
    function calcularHash2(string memory _cadena, uint _k, address _direccion) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_cadena, _k, _direccion));
    }
    //Computo del hash de un string, un entero y una direccion mas otro string y entero que no estan
    //dentro de una variable
    function calcularHash3(string memory _cadena, uint _k, address _direccion) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_cadena, _k, _direccion, "hola", uint(2)));
    }
}



contract VariablesDefinition {

    // Syntax:
    //      <data type> <variable name>;
    //      <data type> <variable name> = <value>;


    // Integer Variables
    uint256 unsignedInteger; // Integer >= 0
    int256 integer; // Integer with sign tollerance.

    // Integer With Size
    // Syntax:
    //
    //      uint<size> variableName;
    //      int<size> variableName;
    //
    // Where size is a number from 8 to 256, from 8 multipliers, which indicates max variable number.
    // If no size is defined, 256 will be the default size.



    // String Variables
    string stringVariable; // UTF-8 chars with arbitrary length. It is a dynamic array.



    // Bool Variables
    bool boolVariable; // It can only be true or false.



    // Bytes Variables
    // Syntax:
    //
    //      bytes<x> variableName;
    //
    // Where x is the bytes amount, from 1 to 32.
    // If no size is defined, 1 will be the default value.
    bytes bytesVariable;



    // Address Variables
    address addressVariable; // 20 bytes address
    
}