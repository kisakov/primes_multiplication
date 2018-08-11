# PrimesMultiplication

Coding exercise

There are two implementations with C code and with Ruby code.

Originally I have started to implement exercise with Ruby using AKS algorithm in order to find first N Prime Numbers (PrimesMultiplication::PrimeNumberSlow).

However, after it was done, I realized that the processing time takes too long and decided to switch to another algorithm.

To make processing time even faster, I added second implementation on C language (PrimesMultiplication::PrimeNumberFast).

You can choose which method to run by using bin/primes or bin/primes_fast files respectively (read instructions below).

With the second implementation the process is much faster and you can see it's result below.

## Complexity

Generating prime numbers is O(sqrt(n)) complexity. But PrimeNumberFast(C code) much faster than PrimeNumberSlow(Ruby code) because Ruby is not so good in the work with numbers.

Generating the multiplication table is O(n^2) complexity.

Displaying the table is also O(n^2) complexity.

**benchmark**

Here are benchmark results:

```
PrimesMultiplication::PrimeNumberFast  0.020000   0.000000   0.020000 (  0.015548)
PrimesMultiplication::PrimeNumberSlow  0.160000   0.000000   0.160000 (  0.170176)
```

You can run benchmark with these commands:

    $ bin/benchmark # benchmarking prime function for 100_000 numbers
    $ bin/benchmark 500000 # benchmarking prime function for 500_000 numbers


## Installation

Go to the gem's directory and then execute:

    $ bundle

or

    $ bin/setup

### Dependencies

* ruby >= 2.0.0
* gem RubyInline for C implementation

    $ gem install RubyInline

## Usage

Reads N from first argument. If no argument - the default value for N is 10.

Go to the gem's directory.
There are two implementations of the program:

**Fast prime numbers implementation with C code**

    $ bin/primes_fast # first ten prime numbers
    $ bin/primes_fast 50 # first fifty prime numbers

**Slow prime numbers implementation with Ruby code**

    $ bin/primes # first ten prime numbers
    $ bin/primes 50 # first fifty prime numbers

## Rspec and Rubocop

    $ rspec
    $ rubocop
