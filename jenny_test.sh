# Tests to cover every feature

# test1: (use -n1) (put -n last) (between n and 10 dimensions) (a dimension of size 2) (all dimensions equal size) (several restrictions) (some restrictions fully duplicated) (a restriction comes after the dimensions it constrains) (one -s) (put -s first) 

./jenny -s9 2 -n8 2 2 2 2 2 2 2 2 -w4b3a -w3a4b -w3a5a4a -w5b4a3a -w7a4b \
 -w8a3b4b -w9a5a6a7a4a -n1

# test2: (use -n2) (put -n in the middle of the dimensions) (n dimensions) (a dimensions with 10 or more features) (very different size dimensions) (one restriction) (no deduced restrictions) (no duplicate restrictions) (a restriction has less than -n features) (a restriction comes before the dimensions it constrains) (no -s) 

./jenny -w1abcdefghjiklmnopqrstuvwxyzABCDEFGHJIKLMNOPQRSTUVWX 52 -n2 3

# test3: (use a -n bigger than 2) (put -n before the dimensions) (more than 10 dimensions) (a dimensions with 3 to 9 features) (different size dimensions) (several restrictions) (some deduced restrictions) (some restrictions partially duplicated) (a restriction has -n features) (several -s) (put -s last) 

./jenny -n3 3 3 3 3 3 2 3 3 3 4 4 4 3 3 3 3 3 3 3 3 4 2 2 2 2 2 2 2 3 3 \
 3 3 -w3ab4c5c -w3c5c4ba -w4b3c5ca -w10a2a -w10b3c -w10c3c4ab -s3 -s5

# test4: (don't use a -n) (between n and 10 dimensions) (a dimension of size 2) (all dimensions equal size) (no restrictions) (no deduced restrictions) (no duplicate restrictions) (several -s) (put -s in the middle) 

./jenny 2 2 -s321411 2 2 2 -s99999999 2 2 2

# test5: (use -n1) (put -n last) (between n and 10 dimensions) (a dimensions with 10 or more features) (very different size dimensions) (several restrictions) (some deduced restrictions) (no duplicate restrictions) (a restriction has more than -n features) (no -s) 

./jenny -w3abcegHEJ4qhgiemnadc 2 5 49 -w3GAMNEsofheng4aoemogar6nbihadcb \
 18 3 17 6 33 7 2 -w8bnqpeitnslgh3engjofha -w8acef4bceg -w4acf6abc3aNF \
-w3yehjgklens4mekkk8qanela -w6aemg8aaebn -w1a3abcdefh -w1b4gdre -w1a6hfd \
-w8ecghnmea1b -w1a5abc -n1

# Further tests to cover every pair of features

# test6: (use -n1) (put -n before the dimensions) (more than 10 dimensions) (a dimensions with 3 to 9 features) (all dimensions equal size) (one restriction) (no deduced restrictions) (some restrictions partially duplicated) (a restriction has more than -n features) (a restriction comes before the dimensions it constrains) (one -s) (put -s in the middle) 

./jenny -n1 -w1a23b4aba 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 \
8 8 8 -s7 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 \
8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 

# test7: (don't use a -n) (n dimensions) (a dimensions with 3 to 9 features) (different size dimensions) (one restriction) (no deduced restrictions) (some restrictions partially duplicated) (a restriction has less than -n features) (a restriction comes after the dimensions it constrains) (several -s) (put -s first)

./jenny -s1 -s0 3 8 -w2abcdeff

# test8: (use -n2) (put -n in the middle of the dimensions) (more than 10 dimensions) (a dimension of size 2) (different size dimensions) (several restrictions) (some restrictions partially duplicated) (a restriction comes after the dimensions it constrains) (no -s) 

./jenny 3 3 3 3 3 3 3 3 2 2 3 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 \
3 2 2 2 2 2 2 2 2 2 2 2 2 2 2 3 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 \
2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 3 3 3 3 2 2 2 2 2 2 2 2 2 2 2 2 2 2 \
2 2 2 2 3 3 3 2 2 2 2 2 2 2 2 2 2 -n2 2 2 2 2 2 2 2 2 2 2 2 3 2 2 2 2 2 2 \
2 3 3 3 2 2 2 2 2 2 2 3 3 3 3 3 3 3 2 2 2 2 2 2 2 2 2 2 2 3 3 3 3 3 2 2 2 \
2 2 2 2 2 2 2 2 2 2 2 2 2 3 3 3 3 3 2 2 2 2 2 2 2 2 2 2 2 -w1a2ab3c -w1b3a5c \
-w1c3a4b -w6a3b5c -w1bc5a6c -w2b3c4a -w6a2a5b -w3c4a7b -w1a2b3bc 2 2 2 2 3 \
3 3 3 3 3 3 3 2 2 2 2 2 2 3 2 3 3 2 3 2 3 2 2 2 2 2 2 2 2 2 3 3 3 3 3 3 2 \
2 2 3 2 2 2 2 2 3 3 3 3 3 3 2 2 2 2 2 2 2 2 2 3 3 3 3 3 3 3 3 2 2 2 2 2 2 \
2 2 2 2 -w257ab258bc

# test9: (don't use a -n) (n dimensions) (a dimensions with 10 or more features) (very different size dimensions) (several restrictions) (some restrictions fully duplicated) (a restriction has -n features) (a restriction comes before the dimensions it constrains) (one -s) (put -s in the middle) 

./jenny -w1a2b -w1a2b -w1mnopqrstuvwxyz 26 -s262 2

# test10: (use -n2) (put -n in the middle of the dimensions) (between n and 10 dimensions) (a dimensions with 3 to 9 features) (different size dimensions) (several restrictions) (some restrictions fully duplicated) (a restriction has more than -n features) (several -s) (put -s last) 

./jenny -w3a5b4c -w8a4a5b -w5a3a4c 3 3 3 3 3 5 -w1a10ab5c -w2c4a1b -n2 4 \
 3 3 6 5 -w1ab3ca4ab -w2ca4ab1ca -w5ac3ab2ac -w2ab3ac4ab -w5c2ab6c \
 -w1ca3ca5ca -s1 -s3

# test11: (use a -n bigger than 2) (put -n before the dimensions) (n dimensions) (a dimension of size 2) (all dimensions equal size) (several restrictions) (some deduced restrictions) (some restrictions fully duplicated) (a restriction has -n features) (a restriction comes after the dimensions it constrains) (no -s) 

./jenny -n12 2 2 2 2 2 2 2 2 2 2 2 2 -w1a2b3a4b5b6a7a8b9b10b11b12b -w6b \
 -w2a5ab -w5a2ab -w5a2ab -w1b -w10a -w6b -w9a -w7b -w11a

# test12: (use a -n bigger than 2) (put -n before the dimensions) (more than 10 dimensions) (a dimensions with 10 or more features) (very different size dimensions) (several restrictions) (some deduced restrictions) (no duplicate restrictions) (a restriction has more than -n features) (a restriction comes after the dimensions it constrains) (one -s) (put -s first) 

./jenny -s1 -n4 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 52 \
 -w28bBcCdDfFgGhHjJkKlLmMnNpPqQrRsStTvVwWxXzZ -w28aAeEiIoOuUyY -w3a5b6a2a9b8a

# test13: (use a -n bigger than 2) (put -n last) (more than 10 dimensions) (a dimensions with 3 to 9 features) (different size dimensions) (several restrictions) (no deduced restrictions) (some restrictions fully duplicated) (a restriction has less than -n features) (a restriction comes before the dimensions it constrains) (one -s) (put -s last) 

./jenny -w20b 3 5 4 -w10a9b -w10a9b 2 3 2 5 -w15b1a 5 2 3 3 3 3 4 4 2 4 3 \
 4 2 2 3 4 2 4  -n3 -s1024 -w10a20a6a4a9a8a7a

# test14: (don't use a -n) (more than 10 dimensions) (a dimensions with 3 to 9 features) (very different size dimensions) (no restrictions) (no deduced restrictions) (no duplicate restrictions) (no -s) 

./jenny 5 2 4 3 6 5 2 4 2 2 4 6 5 2 4 4 3 2 2 4 5 5 3 2 4 4 2 5 5 4 3 2

# test15: (use -n2) (put -n in the middle of the dimensions) (n dimensions) (a dimension of size 2) (all dimensions equal size) (one restriction) (no deduced restrictions) (no duplicate restrictions) (a restriction has -n features) (one -s) (put -s last) 

./jenny 2 -n2 -w1b2b 2 -s7

# test16: (use -n2) (put -n last) (between n and 10 dimensions) (a dimension of size 2) (very different size dimensions) (several restrictions) (some deduced restrictions) (some restrictions partially duplicated) (a restriction has less than -n features) (a restriction comes before the dimensions it constrains) (several -s) (put -s in the middle) 

./jenny -w3abcABC6aabbcc -w6de7ab -w3tuvwxyz -w7c4a -w3t4a5b 2 2 30 -s0 2 \
-s1 2 5 4 3 -n2

# test17: (use a -n bigger than 2) (put -n before the dimensions) (between n and 10 dimensions) (a dimensions with 3 to 9 features) (different size dimensions) (several restrictions) (no duplicate restrictions) (a restriction has less than -n features) (a restriction comes after the dimensions it constrains) (one -s) (put -s in the middle) 

./jenny -n3 4 2 3 5 -s239876543 4 5 2 4 4 3 -w1ab2a -w1bd3a4c -w1cd2b3a \
-w2a5bcd6a -w3b4bcd5ad -w5ab6ace -w6a7ab -w5abc7b -w8ab9d -w10a9b

# test18: (use a -n bigger than 2) (put -n last) (n dimensions) (a dimensions with 10 or more features) (very different size dimensions) (no restrictions) (no deduced restrictions) (no duplicate restrictions) (one -s) (put -s last) 

./jenny 2 3 40 -n3 -s16 | wc

# test19: (don't use a -n) (between n and 10 dimensions) (a dimensions with 10 or more features) (very different size dimensions) (several restrictions) (some deduced restrictions) (some restrictions partially duplicated) (a restriction has more than -n features) (a restriction comes after the dimensions it constrains) (several -s) (put -s last) 

./jenny 26 2 3 -w1aeiou2b3a -w1xyz2a3b -w1owuriennglejrhwlsjja3ab2a -s10 -s6

# test20: (use -n1) (put -n in the middle of the dimensions) (more than 10 dimensions) (a dimension of size 2) (different size dimensions) (several restrictions) (some deduced restrictions) (some restrictions fully duplicated) (a restriction comes before the dimensions it constrains) (one -s) (put -s first) 

./jenny -s9 -w10a9a6a -w10b6a9a -w3a5ab 2 5 2 3 2 2 2 5 2 5 3 3 2 4 2 2 2 2 \
 2 2 6 3 3 4 2 -n1 2 2 2 2 4 2 2 2

# test21: (use -n1) (put -n last) (between n and 10 dimensions) (a dimensions with 3 to 9 features) (all dimensions equal size) (one restriction) (no deduced restrictions) (some restrictions partially duplicated) (a restriction has -n features) (several -s) (put -s first) 

./jenny -s17 -s16 3 3 3 3 3 3      -w2aaaaaa -n1

# test22: (use a -n bigger than 2) (put -n in the middle of the dimensions) (more than 10 dimensions) (a dimensions with 3 to 9 features) (all dimensions equal size) (several restrictions) (some restrictions fully duplicated) (a restriction has less than -n features) (one -s) (put -s in the middle) 

./jenny 3 3 3 -w1ab5ab 3 3 3 -s2 3 3 3 3 3 -n3 3 3 3 3 3 -w1ab5ab 3 3 3 3 3 \
3 3 3 3 3 3 3 3 3 3 3 3 3 3

# test23: (use -n2) (put -n in the middle of the dimensions) (n dimensions) (a dimension of size 2) (different size dimensions) (no restrictions) (no deduced restrictions) (no duplicate restrictions) (one -s) (put -s first) 

./jenny -s3 2 -n2 4

# test24: (use -n1) (put -n before the dimensions) (between n and 10 dimensions) (a dimensions with 10 or more features) (very different size dimensions) (no restrictions) (no deduced restrictions) (no duplicate restrictions) (one -s) (put -s last) 

./jenny -n1 30 20 40 10 50 50 -s3

# test25: (use a -n bigger than 2) (put -n last) (between n and 10 dimensions) (a dimensions with 3 to 9 features) (very different size dimensions) (one restriction) (no deduced restrictions) (some restrictions partially duplicated) (no -s) 

./jenny 3 2 5 4 3 15 -n3 -w1ab2a

# test26: (use -n2) (put -n before the dimensions) (more than 10 dimensions) (a dimension of size 2) (all dimensions equal size) (one restriction) (no deduced restrictions) (no duplicate restrictions) (a restriction has more than -n features) (no -s) 

./jenny -n2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 \
2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 -w1a2a3a

# test27: (use -n1) (put -n before the dimensions) (more than 10 dimensions) (a dimension of size 2) (very different size dimensions) (one restriction) (no deduced restrictions) (no duplicate restrictions) (a restriction has -n features) (a restriction comes after the dimensions it constrains) (several -s) (put -s in the middle) 

./jenny -n1 2 3 2 2 24 2 3 2 -s3 -s3 -s4 -s6 -s9 -s0 -s28372 -s7 3 2  2 2  \
2 22 2 3 2 2 2 2 2 3 2 2 2 2 23 2 2 2 -w3b

# test28: (don't use a -n) (n dimensions) (a dimension of size 2) (all dimensions equal size) (several restrictions) (some restrictions partially duplicated) (a restriction has less than -n features) (a restriction comes after the dimensions it constrains) (one -s) (put -s last) 

./jenny 2 2 -w1a -w2b -w1a2b -s4

# test29: (use -n2) (put -n before the dimensions) (n dimensions) (a dimensions with 3 to 9 features) (all dimensions equal size) (several restrictions) (no duplicate restrictions) (a restriction comes before the dimensions it constrains) (several -s) (put -s first) 

./jenny  -w1a2b -w2a1b -s1 -s8273622 -s37827 -n2 6 6

# test30: (don't use a -n) (between n and 10 dimensions) (a dimensions with 3 to 9 features) (different size dimensions) (several restrictions) (some deduced restrictions) (no duplicate restrictions) (a restriction has -n features) (a restriction comes before the dimensions it constrains) (one -s) (put -s first) 

./jenny -s3 -w2def5bde -w5efg6efg -w1b8b -w2a3b -w3a4b -w4a1b -w7a6b -w6b7c \
-w7a2b -w2a5b -w5a4b 2 7 2 3 7 7 3 2 4

# test31: (don't use a -n) (between n and 10 dimensions) (a dimension of size 2) (different size dimensions) (several restrictions) (some restrictions partially duplicated) (a restriction has more than -n features) (a restriction comes before the dimensions it constrains) (no -s) 

./jenny -w1a2abc3ab4ab5a6ab7ab8ab9a -w1a2a3a4a5a6a7a8a9a 2 4 3 3 3 2 3 3 3 2

# test32: (use -n2) (put -n last) (n dimensions) (a dimensions with 3 to 9 features) (different size dimensions) (one restriction) (no deduced restrictions) (some restrictions partially duplicated) (a restriction has -n features) (a restriction comes after the dimensions it constrains) (one -s) (put -s in the middle) 

./jenny 4 -s18 5 -n2 -w1aa2bba

# test33: (use -n1) (put -n in the middle of the dimensions) (between n and 10 dimensions) (a dimensions with 3 to 9 features) (all dimensions equal size) (several restrictions) (some restrictions fully duplicated) (a restriction has -n features) (a restriction comes before the dimensions it constrains) (no -s) 

./jenny -w2abcdefg -w2gfedcba 8 -n2 8 8 8 8 -n1 8 8 8 8 8

# test34: (use -n2) (put -n before the dimensions) (more than 10 dimensions) (a dimensions with 10 or more features) (very different size dimensions) (several restrictions) (some restrictions partially duplicated) (a restriction has less than -n features) (one -s) (put -s first) 

./jenny -s7 -n2 2 2 2 2 -w1a 3 2 2 2 2 2 3 2 2 2 2 5 2 2 2 2 2 8 2 2 2 2 \
24 2 2 2 2 3 2 2 2 2 5 2 2 2 2 2 -w1a2b -w2b -w2a3b 2 2 2

# test35: (use a -n bigger than 2) (put -n in the middle of the dimensions) (between n and 10 dimensions) (a dimension of size 2) (different size dimensions) (one restriction) (no deduced restrictions) (some restrictions partially duplicated) (a restriction comes before the dimensions it constrains) (several -s) (put -s last) 

./jenny -s1 -w2aba5a -s7 2 4 2 3 -s8 2 2 2 -n3 7 3 2 -s3 -s9

# test36: (use a -n bigger than 2) (put -n in the middle of the dimensions) (between n and 10 dimensions) (a dimension of size 2) (very different size dimensions) (several restrictions) (no deduced restrictions) (some restrictions fully duplicated) (a restriction has more than -n features) (a restriction comes after the dimensions it constrains) (several -s) (put -s in the middle) 

./jenny 3 -s2 2 -n3 18 3 -w1ab2a3abcdefghijklmnop4ab -w1a2a3bc4a

# test37: (don't use a -n) (n dimensions) (a dimension of size 2) (different size dimensions) (several restrictions) (some deduced restrictions) (some restrictions fully duplicated) (a restriction has less than -n features) (no -s) 

./jenny 2 5 -w1a -w1b -w1a -w2b

# test38: (use -n2) (put -n last) (more than 10 dimensions) (a dimensions with 3 to 9 features) (all dimensions equal size) (several restrictions) (some deduced restrictions) (no duplicate restrictions) (a restriction has less than -n features) (a restriction comes after the dimensions it constrains) (several -s) (put -s last) 

./jenny -s3 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 \
-n2 -w10ba11cba -w13de14abc -w14acd12ab -w15abc13cde -w14acd10acd \
-w9abcd11acde -w10cde12ace -w11cde12ade -w12abd13bcd -w14eab15cda -s3

# test39: (use -n1) (put -n before the dimensions) (between n and 10 dimensions) (a dimension of size 2) (all dimensions equal size) (several restrictions) (some deduced restrictions) (some restrictions fully duplicated) (a restriction has more than -n features) (a restriction comes before the dimensions it constrains) (several -s) (put -s last) 

./jenny -n1 -w2a3a4b -w3b4a1a -w2a4a1b3b -w3b4b -w4a1b 2 2 2 2 -s4 -s5

# test40: (use -n2) (put -n last) (n dimensions) (a dimensions with 10 or more features) (very different size dimensions) (several restrictions) (some deduced restrictions) (some restrictions fully duplicated) (a restriction has -n features) (a restriction comes before the dimensions it constrains) (several -s) (put -s first) 

./jenny -s14 -s15 -s14 -s15 -w2aksjenbmsjkhdeeongfAEMGIEJSKNEKGNSKIEJH1a \
-w2EHSIGNEKANFghwsoemskemghs1b -w1a2b 2 52 -n2

# test41: (use -n2) (put -n in the middle of the dimensions) (n dimensions) (a dimensions with 3 to 9 features) (very different size dimensions) (several restrictions) (some deduced restrictions) (some restrictions fully duplicated) (a restriction comes after the dimensions it constrains) (no -s) 

./jenny 3 -n2 17 -w2ab -w1a2b -w1a2cde -w1b2efg -w1c

# test42: (use -n1) (put -n in the middle of the dimensions) (more than 10 dimensions) (a dimensions with 10 or more features) (very different size dimensions) (several restrictions) (some restrictions partially duplicated) (a restriction has -n features) (a restriction comes before the dimensions it constrains) (several -s) (put -s last) 

./jenny -s1 -s0 -w9abcdefghjklmnopqrstuvwxyz -w1abcde3abcde -w3abcde5abcde \
 -w5abcde7abcde 45 2 45 2 45 2 45 2 45 2 45 2 -s3 -n1 45 2 45 2 45 2 45 2 \
 45 2 45 2 45 2

# test43: (use a -n bigger than 2) (put -n in the middle of the dimensions) (n dimensions) (a dimensions with 10 or more features) (very different size dimensions) (several restrictions) (some deduced restrictions) (some restrictions partially duplicated) (one -s) (put -s in the middle) 

./jenny -w1emfknmenslf4bc -w1senfy2ad3yenshs4ad -w1ceoejfnm3aoemgmjwo \
 -w2ab4bd -w1afjwmekf2bd -w3wogfnmejk4ab 25 4 -n4 -s7 25 4

# test44: (don't use a -n) (more than 10 dimensions) (a dimensions with 3 to 9 features) (all dimensions equal size) (several restrictions) (some restrictions fully duplicated) (a restriction has more than -n features) (a restriction comes after the dimensions it constrains) (several -s) (put -s first) 

./jenny -s3 -s4 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 \
 3 3 3 -w5a10b -w5a10b15c -w5a10b15c20ab

# test45: (use a -n bigger than 2) (put -n last) (more than 10 dimensions) (a dimension of size 2) (different size dimensions) (one restriction) (no deduced restrictions) (no duplicate restrictions) (a restriction has -n features) (a restriction comes after the dimensions it constrains) (no -s) 

./jenny 3 5 4 5 5 3 3 2 3 3 4 3 5 3 5 3 3 4 4 3 -w1a2b3c -n3

# test46: (use a -n bigger than 2) (put -n last) (more than 10 dimensions) (a dimensions with 10 or more features) (very different size dimensions) (no restrictions) (no deduced restrictions) (no duplicate restrictions) (several -s) (put -s first) 

./jenny -n20 -s3 -s9 25 2 3 2 5 2 2 2 2 2 6 3 4 2 2 2 2 4 2 2 3 4 2 2 -n3 | wc

# test47: (use -n1) (put -n last) (more than 10 dimensions) (a dimension of size 2) (different size dimensions) (several restrictions) (some restrictions partially duplicated) (a restriction has more than -n features) (several -s) (put -s in the middle) 

./jenny 2 4 3 5 3 4 2 2 2 2 3 2 -s4 4 3 4 2 4 2 4 2 2 4 4 4 2 5 5 5 3 3 4 \
2 4 5 5 4 3 4 4 3 2 4 3 5 5 4 4 3 3 5 5 5 5 5 4 3 3 3 2 2 2 3 3 3 3 4 2 3 \
4 3 4 2 5 5 5 -s9 4 3 3 3 4 4 2 4 4 4 4 3 3 3 3 5 5 5 5 5 4 4 4 4 3 3 3 3 3 3 \
3 2 2 2 2 2 2 2 2 2 3 3 3 3 3 4 4 4 4 4 4 4 4 4 5 5 5 5 4 4 5 4 4 4 4 4 5 \
5 5 5 5 5 5 5 -n1 \
-w5a6a7a4a9a10a11a1a2a3a12a13a14a15a16a17a18a19ac20a \
-w5a6a7a4a9a10a11a1a2a3a12a13a14a15a16a17a18a19ab20a | wc

# test48: (use a -n bigger than 2) (put -n in the middle of the dimensions) (n dimensions) (a dimensions with 10 or more features) (very different size dimensions) (several restrictions) (no duplicate restrictions) (a restriction has -n features) (no -s) 

./jenny 11 31 -n3 2 -w1acefgh2ABCDEslfeigjws3a -w1egbh2bneomekjrhs3b -w1hge2sje

# test49: (use -n1) (put -n before the dimensions) (between n and 10 dimensions) (a dimensions with 3 to 9 features) (different size dimensions) (no restrictions) (no deduced restrictions) (no duplicate restrictions) (no -s) 

./jenny -n1 2 3

# test50: (don't use a -n) (more than 10 dimensions) (a dimension of size 2) (all dimensions equal size) (one restriction) (no deduced restrictions) (some restrictions partially duplicated) (a restriction has -n features) (a restriction comes before the dimensions it constrains) (one -s) (put -s last) 

./jenny -w3a4b 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 -s7

# test51: (don't use a -n) (between n and 10 dimensions) (a dimensions with 10 or more features) (very different size dimensions) (one restriction) (no deduced restrictions) (no duplicate restrictions) (a restriction has less than -n features) (one -s) (put -s in the middle) 

./jenny 3 -s4 52 3 -w2rgheswmktHJEJVMEKJSOTNGBEKenefneTHEKFIE

# test52: (use -n2) (put -n before the dimensions) (more than 10 dimensions) (a dimension of size 2) (different size dimensions) (several restrictions) (some deduced restrictions) (some restrictions fully duplicated) (one -s) (put -s in the middle) 

./jenny -n2 2 4 3 3 2 2 4 2 2 2 2 4 2 2 2 2 -s9 -w1a -w2bc3b -w2a3a4a \
-w4a3c2b 4 3 2 2 2 2 4 3 2 2 2 -w7a4b3a2c -w1a2b -w2b4c -w4ac7b -w7cd2cd \
-w7ad3ac

# test53: (use -n1) (put -n in the middle of the dimensions) (more than 10 dimensions) (a dimensions with 3 to 9 features) (different size dimensions) (one restriction) (no deduced restrictions) (no duplicate restrictions) (a restriction has more than -n features) (a restriction comes after the dimensions it constrains) (several -s) (put -s first) 

./jenny -s1 -s2 -s3 -s4 -s5 -s6 -s7 -s8 -s9 -s10 -s11 -s12 -s13 -s14 -s15 \
-s16 -s17 -s18 -s19 -s20 -s21 -s22 -s23 -s24 -s25 -s26 -s27 -s28 -s29 -s30 \
3 2 3 4 3 3 4 2 4 -n1 3 4 2 4 3 4 2 3 3 4 2 4 4 2 2 4 2 4 3 4 4 4 3 4 \
-w10a11a12a13a14a

# test54: (don't use a -n) (more than 10 dimensions) (a dimensions with 10 or more features) (very different size dimensions) (one restriction) (no deduced restrictions) (some restrictions partially duplicated) (a restriction comes after the dimensions it constrains) (no -s) 

./jenny 2 3 2 4 3 4 2 3 2 3 3 2 2 4 34 3 2 4 3 4 2 4 3 3 2 2 3 4 4 3 3 -w31aba

# test55: (use a -n bigger than 2) (put -n before the dimensions) (between n and 10 dimensions) (a dimension of size 2) (very different size dimensions) (one restriction) (no deduced restrictions) (some restrictions partially duplicated) (a restriction has less than -n features) (a restriction comes before the dimensions it constrains) (one -s) (put -s first) 

./jenny -s1 -n3 2 30 4 3 2 2 -w2abcda3ad

# test56: (use a -n bigger than 2) (put -n last) (n dimensions) (a dimensions with 10 or more features) (very different size dimensions) (several restrictions) (some restrictions fully duplicated) (a restriction has less than -n features) (a restriction comes after the dimensions it constrains) (several -s) (put -s last)

./jenny 33 3 3 -n3 -w3ac2bc -w3c2b -s1 -s2

# test57: (use -n2) (put -n last) (between n and 10 dimensions) (a dimensions with 10 or more features) (very different size dimensions) (one restriction) (no deduced restrictions) (some restrictions partially duplicated) (a restriction has more than -n features) (a restriction comes after the dimensions it constrains) (several -s) (put -s last) 

./jenny 50 3 4 3 -n2 -w1abcdefghjiklmnoppQRSTUVWXABCDEFGHIJK2ab3abc4ab -s3 -s4 -s5

# test58: (don't use a -n) (n dimensions) (a dimensions with 3 to 9 features) (different size dimensions) (several restrictions) (no duplicate restrictions) (one -s) (put -s last) 

./jenny 5 3 -w2ac1b -w1ac2b -s3

# test59: (use a -n bigger than 2) (put -n last) (n dimensions) (a dimensions with 3 to 9 features) (all dimensions equal size) (several restrictions) (some restrictions partially duplicated) (a restriction has less than -n features) (a restriction comes before the dimensions it constrains) (no -s) 

./jenny -w1ab2bc -w1bc2cd -w1bcd2bcd3bd4bcd 4 4 4 4 -n4 | wc

# test60: (don't use a -n) (more than 10 dimensions) (a dimensions with 10 or more features) (very different size dimensions) (several restrictions) (no deduced restrictions) (some restrictions fully duplicated) (a restriction has -n features) (no -s) 

./jenny  -w20ab21ab -w22ab23ab -w24ab25ab -w25ab24ab -w26ab20ab \
-w100ab101ab -w102ab103ab 37 4 4 4 4 4 4 4 \
4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 \
4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 \
3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 \
3 3 3 3 3 3 3 3

# test61: (use -n2) (put -n before the dimensions) (between n and 10 dimensions) (a dimensions with 3 to 9 features) (very different size dimensions) (several restrictions) (some restrictions fully duplicated) (a restriction has -n features) (a restriction comes after the dimensions it constrains) (one -s) (put -s last) 

./jenny -n2 5 17 6 8 -w2abefg4aceg -w4aa2b -s3 -w3a1b

# test62: (use a -n bigger than 2) (put -n in the middle of the dimensions) (more than 10 dimensions) (a dimensions with 3 to 9 features) (all dimensions equal size) (several restrictions) (some deduced restrictions) (some restrictions partially duplicated) (a restriction has more than -n features) (a restriction comes before the dimensions it constrains) (no -s) 

./jenny -w4abc7ade9abe -w5abe2ede6aed -w7abc9edb10abe -w13edc12edb11eda \
-w13abae4edb5abe -w3bcd8bcd9edc -w3b8b9ea10aa 5 5 5 5 5 5 -n3 5 5 5 5 5 5 5

# test63: (use a -n bigger than 2) (put -n in the middle of the dimensions) (between n and 10 dimensions) (a dimensions with 10 or more features) (very different size dimensions) (several restrictions) (some restrictions fully duplicated) (a restriction has more than -n features) (a restriction comes after the dimensions it constrains) (one -s) (put -s first) 

./jenny -s54 4 3 6 4 -n3 20 4 3 4 -w3a5bc7a -w3a5bc7a

# test64: (use -n1) (put -n before the dimensions) (between n and 10 dimensions) (a dimension of size 2) (very different size dimensions) (several restrictions) (some restrictions fully duplicated) (a restriction has more than -n features) (a restriction comes after the dimensions it constrains) (no -s) 

./jenny -n1 2 3 2 2 3 2 2 2 50 3 2 -w1a2bc -w2b1a -w3a4b5a \
 -w9aoejfhgieEJFLEMG1a10bc

# test65: (use a -n bigger than 2) (put -n last) (n dimensions) (a dimension of size 2) (all dimensions equal size) (several restrictions) (some deduced restrictions) (no duplicate restrictions) (a restriction comes after the dimensions it constrains) (several -s) (put -s in the middle) 

./jenny 2 -s5 2 -s1  2 -n3 -w1a2b -w1b2a -w1a2a

# test66: (use -n1) (put -n in the middle of the dimensions) (more than 10 dimensions) (a dimensions with 3 to 9 features) (all dimensions equal size) (no restrictions) (no deduced restrictions) (no duplicate restrictions) (several -s) (put -s last) 

./jenny 4 4 4 4 4 4 4 4 4 4 -n1 -n1 4 4 4 4 4 -s3 4 4 4 4 4  -s55

# test67: (don't use a -n) (more than 10 dimensions) (a dimensions with 3 to 9 features) (different size dimensions) (no restrictions) (no deduced restrictions) (no duplicate restrictions) (one -s) (put -s in the middle) 

./jenny 2 5 3 4 -s2438937 3 2 3 2 3 2 2 2 3 2 3 2 2 3 

# test68: (use -n2) (put -n last) (between n and 10 dimensions) (a dimensions with 3 to 9 features) (different size dimensions) (no restrictions) (no deduced restrictions) (no duplicate restrictions) (no -s) 

./jenny 2 4 3 2 3 5 7 4 3 2 -n2

# test69: (use -n1) (put -n in the middle of the dimensions) (between n and 10 dimensions) (a dimensions with 3 to 9 features) (very different size dimensions) (several restrictions) (some deduced restrictions) (no duplicate restrictions) (a restriction has -n features) (a restriction comes before the dimensions it constrains) (several -s) (put -s in the middle) 

./jenny 2 -w2a -s3 -w2b -s4 -w2c 3 5 6 3 4 -n1 29

# test70: (use a -n bigger than 2) (put -n before the dimensions) (n dimensions) (a dimensions with 3 to 9 features) (all dimensions equal size) (one restriction) (no deduced restrictions) (some restrictions partially duplicated) (a restriction comes after the dimensions it constrains) (one -s) (put -s last) 

./jenny -n3 5 5 -w1abcda2abcda 5 -s3

# test71: (use a -n bigger than 2) (put -n before the dimensions) (n dimensions) (a dimension of size 2) (all dimensions equal size) (no restrictions) (no deduced restrictions) (no duplicate restrictions) (no -s) 

./jenny -n12 2 2 2 2 2 2 2 2 2 2 2 2 | wc

# test72: (don't use a -n) (more than 10 dimensions) (a dimension of size 2) (all dimensions equal size) (several restrictions) (some deduced restrictions) (some restrictions partially duplicated) (one -s) (put -s first) 

./jenny -s3 -w1a2b 2 -w2a4b 2 -w4a8b 2 -w8a16b 2 -w16a3b 2 -w3a6b 2 -w6a12b \
2 -w12a5b 2 -w5a10b 2 -w10a20b 2 -w20a7b 2 -w7a14b 2 -w14a9b 2 -w9a18b 2 \
-w18a11b 2 -w11a13b 2 -w13a15b 2 -w15a17b 2 -w17a19b 2 -w19a21b 2 2

# test73: (don't use a -n) (more than 10 dimensions) (a dimension of size 2) (very different size dimensions) (one restriction) (no deduced restrictions) (no duplicate restrictions) (a restriction has more than -n features) (a restriction comes before the dimensions it constrains) (one -s) (put -s last) 

./jenny -w1a2bc3a 2 3 2 2 3 2 45 4 2 3 2 2 2 2 3 2 -s4

# test74: (use a -n bigger than 2) (put -n before the dimensions) (n dimensions) (a dimension of size 2) (different size dimensions) (several restrictions) (some restrictions fully duplicated) (a restriction has -n features) (a restriction comes before the dimensions it constrains) (several -s) (put -s first) 

./jenny -n3 -s7 -s9 -w2abcd1b3def -w2b3bd1b -w3bd1b2b 2 8 6

# test75: (use -n2) (put -n last) (more than 10 dimensions) (a dimensions with 3 to 9 features) (all dimensions equal size) (several restrictions) (no deduced restrictions) (some restrictions fully duplicated) (a restriction has more than -n features) (a restriction comes before the dimensions it constrains) (one -s) (put -s first) 

./jenny -s9 -w4a5a6a -w4a5a6a -w4a5a6a 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 -n2

# test76: (use -n2) (put -n in the middle of the dimensions) (n dimensions) (a dimension of size 2) (different size dimensions) (several restrictions) (some deduced restrictions) (no duplicate restrictions) (a restriction has less than -n features) (a restriction comes before the dimensions it constrains) (one -s) (put -s last) 

./jenny -w2abcd -w1a -w2e 2 -n2 5 -s10298

# test77: (use -n2) (put -n before the dimensions) (n dimensions) (a dimensions with 10 or more features) (very different size dimensions) (no restrictions) (no deduced restrictions) (no duplicate restrictions) (several -s) (put -s in the middle) 

./jenny -s7 -n2 4 -s3 -s9 25

# test78: (use -n1) (put -n last) (between n and 10 dimensions) (a dimensions with 10 or more features) (very different size dimensions) (several restrictions) (no deduced restrictions) (some restrictions fully duplicated) (several -s) (put -s in the middle) 

./jenny -w3a4a -w4a3a 27 3 29 -s3 29 -s91827 24 -n1

# test79: (use a -n bigger than 2) (put -n in the middle of the dimensions) (between n and 10 dimensions) (a dimensions with 3 to 9 features) (all dimensions equal size) (no restrictions) (no deduced restrictions) (no duplicate restrictions) (one -s) (put -s first) 

./jenny -s7 4 4 4 -n3 4 4 4 

# test80: (don't use a -n) (more than 10 dimensions) (a dimensions with 10 or more features) (very different size dimensions) (several restrictions) (some restrictions fully duplicated) (a restriction comes before the dimensions it constrains) (several -s) (put -s first) 

./jenny -s3 -s5 -w1ABCDEFGH -w1HGFEDCBA 35 5 3 2 2 2 2 2 2 2 2 2 2 2

# test81: (use -n1) (put -n before the dimensions) (between n and 10 dimensions) (a dimensions with 3 to 9 features) (very different size dimensions) (several restrictions) (no deduced restrictions) (some restrictions fully duplicated) (a restriction has more than -n features) (one -s) (put -s first) 

./jenny -s7 -n1 5 3 14 2 26 -w5abcdefgh3ab -w5ijklmn2bc -w5opqrstuvwxyz1bcde

# test82: (use -n1) (put -n before the dimensions) (between n and 10 dimensions) (a dimensions with 10 or more features) (very different size dimensions) (one restriction) (no deduced restrictions) (some restrictions partially duplicated) (a restriction has -n features) (a restriction comes before the dimensions it constrains) (no -s) 

./jenny -n1 40 -w3bbbbbb2bbbbbbb 2 2 

# test83: (use -n2) (put -n last) (n dimensions) (a dimension of size 2) (all dimensions equal size) (several restrictions) (no deduced restrictions) (some restrictions fully duplicated) (a restriction comes before the dimensions it constrains) (no -s) 

./jenny -w1a2b -w1b2a -w2a1b -w2b1a 2 2 -n2

# test84: (use a -n bigger than 2) (put -n in the middle of the dimensions) (more than 10 dimensions) (a dimensions with 3 to 9 features) (different size dimensions) (one restriction) (no deduced restrictions) (no duplicate restrictions) (a restriction comes before the dimensions it constrains) (one -s) (put -s in the middle) 

./jenny -w1a2b3a4b 3 2 3 2 -s3 3 -n4 2 3 2 3 2 3 2 3 2 3 2

# test85: (use -n2) (put -n before the dimensions) (between n and 10 dimensions) (a dimension of size 2) (all dimensions equal size) (several restrictions) (some deduced restrictions) (some restrictions fully duplicated) (a restriction has less than -n features) (several -s) (put -s last) 

./jenny -n2 2 2 2 2 2 2 2 2 2 -w1a -w1b -w4a -w7b -w9ab -s2093 -s2039

# test86: (use -n1) (put -n in the middle of the dimensions) (more than 10 dimensions) (a dimensions with 10 or more features) (very different size dimensions) (no restrictions) (no deduced restrictions) (no duplicate restrictions) (no -s) 

./jenny 52 52 52 52 52 -n1 52 52 52 52 52 52 52 52 5 2 52 52 52 52 52

# test87: (use -n2) (put -n in the middle of the dimensions) (between n and 10 dimensions) (a dimensions with 3 to 9 features) (all dimensions equal size) (one restriction) (no deduced restrictions) (some restrictions partially duplicated) (a restriction has less than -n features) (a restriction comes after the dimensions it constrains) (several -s) (put -s first) 

./jenny -s3 -s4 4 4 4 4 4 -n2 4 4 4 4 4 -w1aba

# test88: (use -n1) (put -n in the middle of the dimensions) (more than 10 dimensions) (a dimensions with 3 to 9 features) (different size dimensions) (several restrictions) (some deduced restrictions) (some restrictions partially duplicated) (a restriction has -n features) (a restriction comes after the dimensions it constrains) (one -s) (put -s first) 

./jenny -s1 3 5 4 3 5 2 -n1 2 3 5 4 3 6 -w1a -w3a -w5a -w7a -w2ab -w2bc -w2d6ab

# test89: (use -n1) (put -n last) (more than 10 dimensions) (a dimension of size 2) (different size dimensions) (several restrictions) (no duplicate restrictions) (a restriction has -n features) (a restriction comes before the dimensions it constrains) (several -s) (put -s last) 

./jenny -s9 2 5 -w3a4a5b -w3a4b -w7a6b 3 3 4 2 2 3 2 5 3 4 3 2 -s8 5 5 3 6 7 \
3 4 3 2 3  -n1 -s7 -s9

# test90: (use -n1) (put -n last) (more than 10 dimensions) (a dimension of size 2) (very different size dimensions) (no restrictions) (no deduced restrictions) (no duplicate restrictions) (several -s) (put -s in the middle) 

./jenny 2 3 -s3 5 4 3 2 49 2 3 5 3 4 2 2 3 4 3 -s6 3 2 2 2 2 4 44 4 5 5 \
2 2 2 3 4 2 3 3 5 45 4 3 2 2 2 4 3 2 2 3 3 8 7 6 9 7 3 -n1

# test91: (use -n2) (put -n last) (more than 10 dimensions) (a dimensions with 10 or more features) (very different size dimensions) (several restrictions) (no duplicate restrictions) (a restriction has more than -n features) (a restriction comes after the dimensions it constrains) (several -s) (put -s in the middle) 

./jenny 15 2 3 -s3 -s4 5 3 4 25 3 2 2 4 5 -n2 -w1abcdefghij7yxwvutsrqponm \
 -w7abcdefghijkl1klmno

# test92: (don't use a -n) (between n and 10 dimensions) (a dimension of size 2) (different size dimensions) (several restrictions) (some restrictions fully duplicated) (a restriction has -n features) (a restriction comes after the dimensions it constrains) (several -s) (put -s last) 

./jenny 2 3 5 -w2b3c -w3b2c -s9 -s10

# test93: (use -n1) (put -n in the middle of the dimensions) (between n and 10 dimensions) (a dimensions with 10 or more features) (very different size dimensions) (one restriction) (no deduced restrictions) (some restrictions partially duplicated) (a restriction comes after the dimensions it constrains) (one -s) (put -s last) 

./jenny 25 3 2 4 5 -n1 8 8 9 -w1abcdefaceghkmpq2bc3a4bcd -s9

# test94: (use a -n bigger than 2) (put -n before the dimensions) (more than 10 dimensions) (a dimension of size 2) (different size dimensions) (no restrictions) (no deduced restrictions) (no duplicate restrictions) (several -s) (put -s last) 

./jenny -n3 2 3 4 2 3 4 2 3 4 2 3 4 2 3 4 2 3 4 2 3 4 2 3 4 2 3 4 -s9 -s9 | wc

# test95: (don't use a -n) (more than 10 dimensions) (a dimension of size 2) (all dimensions equal size) (one restriction) (no deduced restrictions) (no duplicate restrictions) (a restriction has less than -n features) (a restriction comes after the dimensions it constrains) (no -s) 

./jenny 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 \
2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 -w1a

# test96: (don't use a -n) (more than 10 dimensions) (a dimensions with 3 to 9 features) (different size dimensions) (several restrictions) (some deduced restrictions) (some restrictions partially duplicated) (a restriction has more than -n features) (a restriction comes after the dimensions it constrains) (one -s) (put -s in the middle) 

./jenny 3 4 3 2 3 -s7 4 3 2 3 4 3 2 3 4 3 2 3 4 3 2 3 4 3 2 3 4 3 2 3 4 3 \
-w2ac6ad10bc -w2bd6bc10ad -w6ab10ab2ab -w6cd2cd10cd -w10ad6ad2ad

# test97: (don't use a -n) (between n and 10 dimensions) (a dimension of size 2) (different size dimensions) (several restrictions) (some restrictions partially duplicated) (a restriction has less than -n features) (a restriction comes before the dimensions it constrains) (no -s) 

./jenny 2 -w4ab -w4bcc -w1a2a3a4a 5 4 3

# test98: (use a -n bigger than 2) (put -n last) (between n and 10 dimensions) (a dimension of size 2) (different size dimensions) (one restriction) (no deduced restrictions) (some restrictions partially duplicated) (a restriction has more than -n features) (several -s) (put -s first) 

./jenny -s12345 -s67890 2 3 5 4 6 -n3 -w1a2bc3d -w1a2b3d4cc -w5a

# test99: (use a -n bigger than 2) (put -n before the dimensions) (n dimensions) (a dimensions with 10 or more features) (very different size dimensions) (several restrictions) (some deduced restrictions) (some restrictions fully duplicated) (a restriction has less than -n features) (a restriction comes before the dimensions it constrains) (no -s) 

./jenny  -w2ab3b -w2c3a -w2c1bc -n3 20 3 2

# test100: (use a -n bigger than 2) (put -n last) (between n and 10 dimensions) (a dimensions with 3 to 9 features) (all dimensions equal size) (several restrictions) (some deduced restrictions) (some restrictions partially duplicated) (a restriction has -n features) (one -s) (put -s in the middle) 

./jenny 5 5 -s999999 5 5 5 5 -n3 -w2bc3bc4bc -w2cde3cde1abc -w3c2c4ade

# test101: (use a -n bigger than 2) (put -n last) (n dimensions) (a dimensions with 10 or more features) (very different size dimensions) (one restriction) (no deduced restrictions) (no duplicate restrictions) (a restriction has less than -n features) (a restriction comes before the dimensions it constrains) (several -s) (put -s first) 

./jenny -s8 -w1abcdefg -s88 24 6 4 -n3

# test102: (don't use a -n) (between n and 10 dimensions) (a dimensions with 10 or more features) (very different size dimensions) (several restrictions) (no deduced restrictions) (no duplicate restrictions) (a restriction has -n features) (a restriction comes after the dimensions it constrains) (one -s) (put -s last) 

./jenny 27 3 5 4 2 3 2 2 -s3 -w2a3b -w2b4c 

# test103: (don't use a -n) (n dimensions) (a dimensions with 10 or more features) (very different size dimensions) (no restrictions) (no deduced restrictions) (no duplicate restrictions) (several -s) (put -s first) 

./jenny -s7 50 -s9 20 | wc

# test104: (don't use a -n) (n dimensions) (a dimensions with 3 to 9 features) (all dimensions equal size) (no restrictions) (no deduced restrictions) (no duplicate restrictions) (several -s) (put -s last) 

./jenny 10 10 -s9 -s7 | wc

# test105: (use a -n bigger than 2) (put -n before the dimensions) (n dimensions) (a dimension of size 2) (very different size dimensions) (several restrictions) (some deduced restrictions) (some restrictions fully duplicated) (one -s) (put -s last) 

./jenny -n3 2 25 2 -w3a2bc1a -w3a2bc1a -w3b1b -w3a2ef1ab -s3

# test106: (use -n1) (put -n last) (between n and 10 dimensions) (a dimensions with 10 or more features) (very different size dimensions) (several restrictions) (some deduced restrictions) (some restrictions partially duplicated) (a restriction comes after the dimensions it constrains) (several -s) (put -s first) 

./jenny -s9 -s9 -s7 17 10 5 2 -n1 -w2a3b -w3a4b -w4a1b -w2f3abe -w3cd

# test107: (use -n2) (put -n in the middle of the dimensions) (n dimensions) (a dimensions with 3 to 9 features) (all dimensions equal size) (no restrictions) (no deduced restrictions) (no duplicate restrictions) (one -s) (put -s in the middle) 

./jenny 3 -n2 -s3 3

# test108: (use -n2) (put -n last) (more than 10 dimensions) (a dimension of size 2) (different size dimensions) (several restrictions) (some deduced restrictions) (some restrictions fully duplicated) (a restriction has -n features) (a restriction comes before the dimensions it constrains) (no -s) 

./jenny -w10a11b -w11b10ac -w10b 2 4 3 2 3 2 2 2 3 3 4 4 5 5 6 6 5 5 4 4 4 -n2

# test109: (don't use a -n) (more than 10 dimensions) (a dimensions with 3 to 9 features) (all dimensions equal size) (several restrictions) (no deduced restrictions) (some restrictions partially duplicated) (a restriction has more than -n features) (one -s) (put -s last) 

./jenny -w1aa 3 3 3 3 3 3 -w2ab3ca4ac 3 -w2a3a4a 3 3 3 3 3 3 3 3 3 3 3 3 \
3 3 3 -s333333

# test110: (use a -n bigger than 2) (put -n last) (more than 10 dimensions) (a dimension of size 2) (all dimensions equal size) (no restrictions) (no deduced restrictions) (no duplicate restrictions) (several -s) (put -s in the middle) 

./jenny 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 -s7 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 \
-s8 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 -s9 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 -n3

# test111: (use a -n bigger than 2) (put -n in the middle of the dimensions) (n dimensions) (a dimensions with 3 to 9 features) (very different size dimensions) (one restriction) (no deduced restrictions) (no duplicate restrictions) (a restriction has less than -n features) (a restriction comes before the dimensions it constrains) (several -s) (put -s last) 

./jenny -w2a 4 20 -n3 5 -s3 -s9

# test112: (use a -n bigger than 2) (put -n before the dimensions) (between n and 10 dimensions) (a dimensions with 3 to 9 features) (different size dimensions) (one restriction) (no deduced restrictions) (no duplicate restrictions) (a restriction has more than -n features) (a restriction comes after the dimensions it constrains) (no -s) 

./jenny -n3 6 4 6 8 6 4 6 8 -w1ab2ab3ab4ab5ab6ab7ab8ab

# test113: (use a -n bigger than 2) (put -n last) (more than 10 dimensions) (a dimensions with 3 to 9 features) (different size dimensions) (several restrictions) (some restrictions fully duplicated) (a restriction comes after the dimensions it constrains) (one -s) (put -s in the middle) 

./jenny 3 4 3 4 3 4 3 4 3 4 3 -s7 4 3 4 3 4 3 4 3 4 -n3 -w10ab -w10a -w10b

# test114: (use a -n bigger than 2) (put -n last) (n dimensions) (a dimension of size 2) (all dimensions equal size) (one restriction) (no deduced restrictions) (no duplicate restrictions) (a restriction has less than -n features) (one -s) (put -s in the middle) 

./jenny 2 2 -s7 2 -n3 -w2a1a

# test115: (use a -n bigger than 2) (put -n before the dimensions) (between n and 10 dimensions) (a dimension of size 2) (very different size dimensions) (one restriction) (no deduced restrictions) (some restrictions partially duplicated) (a restriction has more than -n features) (several -s) (put -s last) 

./jenny -n3 2 5 4 3 18 2 3 -w2ab3a4a5a -s9 -s78

# test116: (use -n1) (put -n before the dimensions) (between n and 10 dimensions) (a dimensions with 3 to 9 features) (all dimensions equal size) (no restrictions) (no deduced restrictions) (no duplicate restrictions) (several -s) (put -s first) 

./jenny -s1 -s9 -s0 -n1 7 7 7 7 7 7 7 7 7

# test117: (use a -n bigger than 2) (put -n in the middle of the dimensions) (n dimensions) (a dimensions with 3 to 9 features) (all dimensions equal size) (several restrictions) (some deduced restrictions) (some restrictions fully duplicated) (a restriction has less than -n features) (a restriction comes before the dimensions it constrains) (several -s) (put -s first) 

./jenny -s192 -s512 8 8 -n3 8 -w1abcd2abcd -w2abcd3abcd -w1efgh2efgh \
-w2efgh3efgh -w1aceg2aceg3aceg

# test118: (use -n2) (put -n in the middle of the dimensions) (more than 10 dimensions) (a dimensions with 10 or more features) (very different size dimensions) (several restrictions) (some deduced restrictions) (some restrictions partially duplicated) (a restriction has more than -n features) (a restriction comes before the dimensions it constrains) (no -s) 

./jenny 3 4 2 3 2 -n2 2 4 3 2 49 2 2 2 -w10abEHES -w3a4a5a6a -w3a4a5a \
-w3a4a -w3b1c

# test119: (use -n2) (put -n last) (more than 10 dimensions) (a dimensions with 10 or more features) (very different size dimensions) (one restriction) (no deduced restrictions) (some restrictions partially duplicated) (a restriction comes after the dimensions it constrains) (several -s) (put -s first) 

./jenny -s3 -s9 3 2 3 2 2 3 2 39 2 2 4 3 2 2 3 2 2 -n2 -w8abcdefghjilmekgEHAIB

# test120: (use -n2) (put -n last) (more than 10 dimensions) (a dimension of size 2) (different size dimensions) (no restrictions) (no deduced restrictions) (no duplicate restrictions) (several -s) (put -s last) 

./jenny 2 3 2 4 3 2 3 2 2 3 2 2 2 4 4 3 3 2 2 2 3 3 3 2 2 4 2 3 -n2 -s3 -s9990

