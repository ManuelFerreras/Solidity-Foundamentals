// Indicar Version de Solidity a Usar
pragma solidity ^0.8.0; // Version >=0.8.0 <0.9.0

// Also Valid:
pragma solidity >=0.8.0 <0.9.0;


// License Identifier
// SPDX-License-Identifier: UNLICENSED



// Formato natspec para comentar en solidity //

// /// @title <Título del Contrato>
// /// @author <Autor del Contrato>
// /// @notice <Explicar lo que hace el contrato o la Función>
// /// @dev <Detalles Adicionales Sobre el Contrato o Función>
// /// @param <nombre_parametro> <Describir para qué sirve el valor de retorno de una funcion>


// Comentario de una linea

/*
Comentario
Multi
linea
*/



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



contract enumDataType {

    // enums are a way of creating a custom data type

    // Syntax:
    //      enum <enum name> {<enum values>}; // Create an enum
    //
    //      <enum name> <variable name>; // Declare a custom enum type variable

    enum enumVariable {ON, OFF} 
    // Variable enum
    enumVariable state;

    // Sets STATE to ON by enum value.
    function turnOn() public {
        state = enumVariable.ON;
    }

    // Sets STATE to OFF by enum value index.
    function turnOff() public {
        state = enumVariable(1);
    }

}



contract timeVariables {

    // block.timestamp;
    // <x> seconds;
    // <x> minutes;
    // <x> hours;
    // <x> days;
    // <x> weeks;

    uint256 nowTimestamp = block.timestamp;
    uint256 secondsVariable = 50 seconds;
    uint256 minutesVariable = 50 minutes;
    uint256 hoursVariable = 50 hours;
    uint256 daysVariable = 50 days;
    uint256 weeksVariable = 50 weeks;
    
}



contract variableCast {

    // We can transform a UINT or INT to and from BYTES with <x> n° of bits.
    //
    // Syntax:
    //      uint<x>(<int_variable<y>>);
    //      int<x>(<uint_variable<y>>);

    // ex:
    uint8 uintTo8Bits = 42;

    // Cast
    int8 castEx = int8(uintTo8Bits);

}



contract modifiers {

    // public
    //
    // Creates a getter function to a variable so that it can be seen by anyone.
    uint256 public publicNum = 5;


    // private
    //
    // Creates variables which are only accesible from inside the contract.
    uint256 private privateNum = 5;


    // internal
    //
    // Creates variables which are only accesible internally (inheritants contracts).
    uint256 internal internalNum = 5;


    // memory
    //
    // Temporary stored variables.

    // storage
    //
    // Stored permanently into the blockchain.


    // payable
    //
    // Only available to address type variables. Allows to send and receive ether.

}



contract compareStrings {

    // Compare Strings with abi.encodePacked and keccak256.
    function compareStringsFunction(string memory _firstString, string memory _secondString) public pure returns(bool) {

        bytes32 hash_first = keccak256(abi.encodePacked(_firstString));
        bytes32 hash_second = keccak256(abi.encodePacked(_secondString));

        if (hash_first == hash_second) {
            return true;
        } else {
            return false;
        }
    }

}



contract mathematicOperators {

    // Operate Numbers:


    // Add '+'

    // Substract '-'

    // Multiply '*'

    // Divide '/'

    // Module '%'

    // Exponential '**'

    


    // Compare Numbers:


    // Greater '>'

    // Lower '<'

    // Greater or Equals '>='

    // Lower or Equals '<='

    // Equals '=='

    // Not Equals '!='




    // Compare Booleans


    // Negation '!'

    // And '&&'

    // Or '||'

    // Equals '=='

    // Not Equals '!='

}