# Eligibility Contract

This contract allows you to check the eligibility for a scholarship based on a given percentage.

## Prerequisites

- Solidity version 0.8.7 or higher

## Installation

1. Clone this repository.
2. Open the project directory.

## Usage

1. Compile the Solidity contract using a Solidity compiler compatible with version 0.8.7.
2. Deploy the contract to a compatible blockchain network.
3. Call the `check` function with a percentage as a parameter.

```solidity
function check(uint256 _percent) public pure returns (string memory)
```

The `check` function takes a percentage (`_percent`) as input and returns a message indicating the eligibility for a scholarship. The function performs the following steps:

1. Checks if the input percentage is within the valid range of 0 to 100. If it's not, the function throws an error with the message "Invalid percentage."
2. If the input percentage is less than 75, the function throws an error with the message "You aren't eligible."
3. If the input percentage is 75 or greater, the function returns the message "Congratulations! You are eligible for the scholarship."

## Examples

Example 1:

```solidity
Eligibility eligibility = Eligibility();
string memory result = eligibility.check(85);
```

Output:

```
Congratulations! You are eligible for the scholarship
```

Example 2:

```solidity
Eligibility eligibility = Eligibility();
string memory result = eligibility.check(60);
```

Output:

```
You aren't eligible
```

## Contributing

Contributions are welcome! If you find any issues or have suggestions, please open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
