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

- Sex: ♀️, ♂️
- Weather: 🌧, ⛈, 🌩, ☀️, 🌤, 🌥
- Mood: 😃, 😉, 😋, 😎, 🤐, 🤒, 😠, 😦, 😧, 😨, 😴, 😌


Jenny can generate combinations:

```
$ ./jenny -n3 2 6 12
 1a 2d 3j 
 1b 2e 3i 
 1a 2a 3e 
 ...
 
 1a 2f 3i 
 1b 2a 3c 
```
where 3 is a number of features in combination, 2, 6 and 12 are numbers of possible values for the appropriate feature. Total number of possible combinations is 144.


```
$ cat jenny.sed
# number the testcases
=


# Dimension 1
s/ 1a / ♀️ /g
s/ 1b / ♂️ /g

# Dimension 2
s/ 2a / 🌧 /g
s/ 2b / ⛈ /g
s/ 2c / 🌩 /g
s/ 2d / ☀️ /g
s/ 2e / 🌤 /g
s/ 2f / 🌥 /g

# Dimension 3
s/ 3a / 😃 /g
s/ 3b / 😉 /g
s/ 3c / 😋 /g
s/ 3d / 😎 /g
s/ 3e / 🤐 /g
s/ 3f / 🤒 /g
s/ 3g / 😠 /g
s/ 3h / 😦 /g
s/ 3i / 😧 /g
s/ 3j / 😨 /g
s/ 3k / 😴 /g
s/ 3l / 😌 /g
```

```
$ sed -f jenny.sed output.txt
```


```
  ♀️ ☀️ 😨 
 ♂️ 🌤 😧 
 ♀️ 🌧 🤐 
 ♀️ ⛈ 😃 
 ♀️ 🌩 😎 
 ♂️ 🌥 😌 
 ♂️ ⛈ 😉 
 ♀️ 🌤 😋 
 ♂️ 🌩 🤒 
 ♀️ 🌥 😠 
 ♀️ 🌩 😦 
 ♀️ 🌤 😴 
 ♂️ 🌧 😦 
 ♂️ ☀️ 😴 
 ♀️ 🌧 😌 
 ♀️ ⛈ 😌 
 ♂️ ☀️ 😌 
 ♀️ 🌥 😴 
 ♂️ 🌧 😨 
 ♂️ ⛈ 😨 
 ♀️ 🌩 😌 
 ♀️ ☀️ 😧 
 ♀️ 🌤 😌 
 ♂️ 🌥 😧 
 ♂️ 🌧 😧 
 ♀️ ⛈ 😧 
 ♀️ 🌩 😧 
 ♂️ ☀️ 😦 
 ♂️ 🌤 😦 
 ♂️ 🌥 😦 
 ♀️ 🌧 😴 
 ♀️ ⛈ 😦 
 ♂️ 🌩 😨 
 ♂️ ☀️ 😠 
 ♀️ 🌤 😠 
 ♀️ 🌥 😨 
 ♀️ 🌧 😠 
 ♂️ ⛈ 😠 
 ♂️ 🌩 😠 
 ♀️ ☀️ 🤒 
 ♂️ 🌤 🤒 
 ♀️ 🌥 🤒 
 ♂️ 🌧 😃 
 ♀️ 🌧 😉 
 ♂️ ⛈ 😋 
 ♂️ ⛈ 😎 
 ♂️ 🌩 🤐 
 ♀️ ☀️ 🤐 
 ♀️ 🌤 🤐 
 ♀️ 🌥 🤐 
 ♀️ 🌩 😴 
 ♂️ ☀️ 😎 
 ♂️ 🌤 😎 
 ♀️ 🌥 😎 
 ♀️ 🌥 😃 
 ♀️ 🌥 😉 
 ♀️ 🌥 😋 
 ♀️ 🌧 🤒 
 ♀️ ⛈ 🤒 
 ♂️ 🌩 😋 
 ♂️ ☀️ 😋 
 ♀️ 🌤 😨 
 ♂️ ☀️ 😃 
 ♀️ ☀️ 😉 
 ♀️ 🌧 😋 
 ♀️ ⛈ 🤐 
 ♂️ 🌩 😉 
 ♂️ 🌤 😉 
 ♂️ 🌩 😃 
 ♀️ 🌧 😎 
 ♀️ ⛈ 😴 
 ♂️ 🌤 😃 
 ♂️ 🌧 😉 
 ♂️ 🌤 😌 
 ♂️ 🌤 😴 
 ♂️ 🌤 😨 
 ♂️ 🌤 😠 
 ♂️ 🌤 🤐 
 ♂️ 🌥 😨 
 ♂️ 🌤 😋 
 ♀️ 🌧 😃 
 ♂️ 🌥 😋 
 ♀️ ☀️ 😌 
 ♂️ 🌥 😃 
 ♀️ ☀️ 😴 
 ♂️ ☀️ 😨 
 ♀️ ☀️ 😦 
 ♂️ ☀️ 😧 
 ♀️ ☀️ 😠 
 ♂️ ☀️ 🤒 
 ♀️ 🌥 😌 
 ♂️ ☀️ 🤐 
 ♀️ ☀️ 😎 
 ♂️ 🌥 😴 
 ♀️ ☀️ 😋 
 ♂️ 🌥 🤒 
 ♀️ 🌤 🤒 
 ♂️ ☀️ 😉 
 ♀️ ☀️ 😃 
 ♂️ 🌥 🤐 
 ♀️ 🌥 😦 
 ♂️ 🌩 😌 
 ♀️ 🌩 😨 
 ♂️ 🌩 😴 
 ♀️ 🌩 😠 
 ♂️ 🌩 😧 
 ♀️ 🌩 🤒 
 ♂️ 🌩 😦 
 ♀️ 🌩 🤐 
 ♂️ 🌩 😎 
 ♀️ 🌩 😋 
 ♂️ 🌥 😠 
 ♀️ 🌩 😉 
 ♂️ 🌥 😎 
 ♀️ 🌩 😃 
 ♂️ 🌥 😉 
 ♀️ 🌤 😃 
 ♂️ ⛈ 😌 
 ♀️ ⛈ 😨 
 ♂️ ⛈ 😴 
 ♀️ ⛈ 😠 
 ♂️ ⛈ 😧 
 ♀️ 🌤 😧 
 ♂️ ⛈ 😦 
 ♀️ 🌤 😎 
 ♂️ ⛈ 🤒 
 ♂️ 🌧 😴 
 ♀️ ⛈ 😎 
 ♂️ 🌧 😠 
 ♀️ ⛈ 😋 
 ♂️ 🌧 🤒 
 ♀️ ⛈ 😉 
 ♂️ 🌧 🤐 
 ♀️ 🌧 😨 
 ♀️ 🌧 😧 
 ♂️ ⛈ 🤐 
 ♀️ 🌧 😦 
 ♂️ ⛈ 😃 
 ♀️ 🌤 😦 
 ♂️ 🌧 😌 
 ♀️ 🌤 😉 
 ♂️ 🌧 😎 
 ♀️ 🌥 😧 
 ♂️ 🌧 😋 
```
