# Bob Jenkins, June 2003, for translating jenny output
# Modify this file to translate things like 2c to the names of your features

# Jenny output guarantees that feature names (2c) are always preceded and
# followed by a space ( 2c ).  This replaces features names ( 2c ) with
# something else ( my_feature_description ).  It's important to precede and 
# follow your feature descriptions with spaces, otherwise the untranslated
# feature names next to already-translated names ( 3b ) won't have a leading
# or trailing space, and this sed script won't be able to translate them.

# number the testcases
=


# Dimension 1: value of -n.
s/ 1a / (use -n1) /g
s/ 1b / (use -n2) /g
s/ 1c / (use a -n bigger than 2) /g
s/ 1d / (don't use a -n) /g

# Dimension 2: location of -n.
s/ 2a / (put -n before the dimensions) /g
s/ 2b / (put -n in the middle of the dimensions) /g
s/ 2c / (put -n last) /g
s/ 2d / /g

# Dimension 3: number of vectors (dimensions).  Same as -n, <10, or >10.
s/ 3a / (n dimensions) /g
s/ 3b / (between n and 10 dimensions) /g
s/ 3c / (more than 10 dimensions) /g

# Dimension 4: size of one of the dimensions.  2, 3..10, or >10.
s/ 4a / (a dimension of size 2) /g
s/ 4b / (a dimensions with 3 to 9 features) /g
s/ 4c / (a dimensions with 10 or more features) /g

# Dimension 5: relative sizes of dimensions.
s/ 5a / (all dimensions equal size) /g
s/ 5b / (different size dimensions) /g
s/ 5c / (very different size dimensions) /g

# Dimension 6: number of restrictions (-w) given.
s/ 6a / (no restrictions) /g
s/ 6b / (one restriction) /g
s/ 6c / (several restrictions) /g

# Dimension 7: Do the results give "Could not cover tuple ..."?
s/ 7a / (no deduced restrictions) /g
s/ 7b / (some deduced restrictions) /g
s/ 7c / /g

# Dimension 8: Are there duplicate restrictions?
s/ 8a / (no duplicate restrictions) /g
s/ 8b / (some restrictions partially duplicated) /g
s/ 8c / (some restrictions fully duplicated) /g

# Dimension 9: Number of dimensions in one of the restrictions.
s/ 9a / (a restriction has less than -n features) /g
s/ 9b / (a restriction has -n features) /g
s/ 9c / (a restriction has more than -n features) /g
s/ 9d / /g

# Dimension 10: Location of one of the restrictions.
s/ 10a / (a restriction comes before the dimensions it constrains) /g
s/ 10b / (a restriction comes after the dimensions it constrains) /g
s/ 10c / /g

# Dimension 11: How many random seeds are given (last one wins)?
s/ 11a / (no -s) /g
s/ 11b / (one -s) /g
s/ 11c / (several -s) /g

# Dimension 12: Location of the last random seed
s/ 12a / (put -s first) /g
s/ 12b / (put -s in the middle) /g
s/ 12c / (put -s last) /g
s/ 12d / /g
