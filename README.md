### Jenny

[![Build Status](https://travis-ci.org/ligurio/jenny.svg?branch=master)](https://travis-ci.org/ligurio/jenny)

jenny is tool for generating regression tests. Any time exhaustive testing
looks painful due to the combinatorial explosion of features interactions to be
tested, consider using jenny. It will cover most of the interactions with far
fewer testcases. It can guarantee pairwise testing of all features that can be
used together, and it can avoid those feature combinations that cannot.

[Learn
more](https://csrc.nist.gov/Projects/Automated-Combinatorial-Testing-for-Software)
about combinatorial testing.

#### Example

Let's imagine we have a program with three features and various values for each feature:

- Sex (2): ♀️, ♂️
- Weather (3): 🌧, ☀️, 🌥
- Mood (3): 🤒, 😧, 😴

Jenny can generate combinations:

```sh
$ ./jenny -n3 2 3 3
 1a 2a 3a
 1b 2b 3b
 1b 2c 3c
 1a 2b 3c
 1b 2a 3c
 1a 2c 3b
 1b 2b 3a
 1b 2a 3b
 1a 2c 3a
 1a 2a 3b
 1a 2c 3c
 1b 2a 3a
 1a 2b 3b
 1b 2c 3a
 1a 2b 3a
 1b 2b 3c
 1a 2a 3c
 1b 2c 3b
```

where 3 is a number of features in combination, 2, 3 and 3 are numbers of
possible values for the appropriate feature. Total number of possible
unique combinations is 18.

```sh
$ cat jenny.sed
# number the testcases
=


# Dimension 1
s/ 1a / ♀️ /g
s/ 1b / ♂️ /g

# Dimension 2
s/ 2a / 🌧 /g
s/ 2b / ☀️ /g
s/ 2c / 🌥 /g

# Dimension 3
s/ 3a / 🤒 /g
s/ 3b / 😧 /g
s/ 3c / 😴 /g
```

```sh
$ ./jenny -n3 2 3 3 | sed -f jenny.sed
1  ♀️ 🌧 🤒
2  ♂️ ☀️ 😧
3  ♂️ 🌥 😴
4  ♀️ ☀️ 😴
5  ♂️ 🌧 😴
6  ♀️ 🌥 😧
7  ♂️ ☀️ 🤒
8  ♂️ 🌧 😧
9  ♀️ 🌥 🤒
10 ♀️ 🌧 😧
11 ♀️ 🌥 😴
12 ♂️ 🌧 🤒
13 ♀️ ☀️ 😧
14 ♂️ 🌥 🤒
15 ♀️ ☀️ 🤒
16 ♂️ ☀️ 😴
17 ♀️ 🌧 😴
18 ♂️ 🌥 😧
```
