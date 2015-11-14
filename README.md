# Boosterpack
![Build Status](https://travis-ci.org/Nirma/boosterpack.svg?branch=master)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://doge.mit-license.org)

## A micro framework of convenience extensions for Swift

A very small and light weight framework offering operators, shorthand and extensions
for Swift built in language types.

## Operators

### Dictionary Extensions

```swift
// Addition and Subtraction Operators
let contacts = ["Jimmy" : "jimmy@example.com", "Steve" : "steve@example.com", "Jane" : "jane@example.com"]
let contactsOfNewlyFormedEnemies = ["Steve" : "steve@example.com"]

var friends = contacts - contactsOfNewlyFormedEnemies // ["Jimmy" : "jimmy@example.com", "Jane" : "jane@example.com"]

friends += ["Frank" : "frank@example.com"] // ["Jimmy" : "jimmy@example.com", "Frank" : "frank@example.com", "Jane" : "jane@example.com"]

```
### String Extensions

```swift
"five".length // 4
```
## Contributing

Have an idea or improvement for Boosterpack?
Contributions are more than welcome!
Just send over a pull request!

## License

BoosterPack is released under the [MIT License](LICENSE).



