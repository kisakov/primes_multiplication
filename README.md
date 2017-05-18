# PrimesMultiplication

Coding exercise for fundingcircle.com

## Installation

Go to the gem's directory and then execute:

    $ bundle

or

    $ bin/setup

### Dependencies

* ruby >= 2.0.0
* gem RubyInline

    $ gem install RubyInline

## Usage

Reads N from first argument. If no argument - the default value for N is 10.

Go to the gem's directory.
There are two implementations of the program:

**Fast prime numbers implementation with C code**

    $ bin/primes_fast
    $ bin/primes_fast 50

**Slow prime numbers implementation with Ruby code**

    $ bin/primes
    $ bin/primes 50

## Rspec and Rubocop

    $ rspec
    $ rubocop

### Complexity

Generating the multiplication table is O(n**2) complexity.
Displaying the table is also O(n**2) complexity.

## Description

### Objective

Funding Circle Coding Challenge
Write a program that prints out a multiplication table of the first 10 prime number.
* The program must run from the command line and print one table to STDOUT.
* The first row and column of the table should have the 10 primes, with each cell
containing the product of the primes for the corresponding row and column.

### Notes

* Consider complexity. How fast does your code run? How does it scale?
* Consider cases where we want N primes.
* Do not use the Prime class from stdlib (write your own code).
* Write tests. Try to demonstrate TDD/BDD.
* If you’re using external dependencies please specify those dependencies and how to install them.
* Please p ackage your code, OR include running instructions.

