# Solidity Array Examples

## Simple array

## Multidimensional 2D and 3D array

### 1. Array Variable Declaration

Solidity supports fixed sized and dynamic array declaration and the dynamic 3D arrays will be declared same as the 2D arrays.

```Solidity
uint[3] fixedSimpleArr;
uint[] simpleDynamicArr;
uint[3][3] fixedSized;   // fixed sized array
uint[][3] arrayDynamic;  // dynamic array with each element an array with 3
uint[3][] dynamicArray;  // fixed sized array with each element a dynamic
uint[][] dynamicArr;    // dynamic array with dynamic array elements.
uint[3][3][3] threeDArr;
```

### 2. Accessing array elements

Array elements can be accessed with indices - `fixedSized[i][j]`;

### 3. Array input and output

Solidity supports array inputs and output by passing to and returning array from a function.
But dynamic arrays can't be passed to or return from an array. The error says:
`TypeError: This type is only supported in the new experimental ABI encoder.`
In order to use it, it is necessary to include `pragma experimental "ABIEncoderV2";`. Using `ABIEncoderV2` we would get warning saying "Do not use experimental features on live deployments".

```Solidity
function setFixedSimpleArr(uint[3] memory simpleArr) public {
  fixedSimpleArr = simpleArr;
}

function setFixedSized(uint[3][3] memory inputArr) public {
    fixedSized = inputArr;
}

function setDynamicArray(uint[3][] memory inputArr) public {
    dynamicArray = inputArr;
}

function setThreeDArr(uint[3][3][3] memory inputArr) public {
    threeDArr = inputArr;
}

function getFixedSimpleArr(uint[3] memory simpleArr) public {
  fixedSimpleArr = simpleArr;
}

function getFixedSized() public view returns (uint[3][3] memory) {
    return fixedSized;
}

function getDynamicArray() public view returns (uint[3][] memory) {
    return dynamicArray;
}
function getThreeDArr() public view returns (uint[3][3][3] memory) {
    return threeDArr;
}
```

With `ABIEncoderV2` we can access arrays like:

```Solidity
 function setSimpleDynamicArr(uint[] memory simpleArr) public {
   simpleDynamicArr = simpleArr;
 }

function setArrayDynamic(uint[][3] memory inputArr) public {
    arrayDynamic = inputArr;
}

function setDynamicArr(uint[][] memory inputArr) public {
    dynamicArr = inputArr;
}

function getSimpleDynamicArr(uint[] memory simpleArr) public {
  simpleDynamicArr = simpleArr;
}

function getArrayDynamic() public view returns (uint[][3] memory) {
    return arrayDynamic;
}

function getDynamicArr() public view returns (uint[][] memory) {
    return dynamicArr;
}
```
