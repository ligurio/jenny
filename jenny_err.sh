# errors

./jenny

./jenny a b c

./jenny 1

./jenny 2

./jenny 2a 2b 2c

./jenny -n3 52 53

./jenny -n3 53 52 52

./jenny -n3 52 52

./jenny -n3 2 2 2 -h

./jenny -

./jenny -nb

./jenny -n0

./jenny -n33

./jenny -n3a

./jenny -n19 2 3 4 5 6

./jenny -n2 -w4b1a2dac4a 2 4 2 2

./jenny -n4 3 3 3 3 -w25740329352a

./jenny -n4 3 3 3 3 -w2-1za

./jenny -n4 3 3 3 3 -w2

./jenny -n4 3 3 3 3 -w2f

./jenny -n4 3 3 3 3 -w0a2b

./jenny -n4 3 3 3 3 -wn3a4b

./jenny -n4 3 3 3 3 -w3a4b3bc

./jenny -n4 3 3 3 3 -w1a2b345

./jenny -s2 2 2 2 -s1a

./jenny -sa 2 2 2

./jenny -m3

./jenny -3

./jenny -o

echo '1a 2a 3a ' > jenny_err.tmp
./jenny 2 2 2 -ojenny_err.tmp

echo ' a b c ' > jenny_err.tmp
./jenny 2 2 2 -ojenny_err.tmp

echo ' 1a2a3a' > jenny_err.tmp
./jenny 2 2 2 -ojenny_err.tmp

echo ' 1a 2a 3a ' > jenny_err.tmp
./jenny 2 2 2 -ojenny_err.tmp

echo ' 1a 2a 3a ' > jenny_err.tmp
echo ' 1a 2a 3a' >> jenny_err.tmp
./jenny 2 2 2 -ojenny_err.tmp

echo ' 1a 2a 3a ' > jenny_err.tmp
./jenny 2 2 2 -ojenny_err.tmp -w2a3a

echo ' 1- 2a 3a ' > jenny_err.tmp
./jenny 2 2 2 -ojenny_err.tmp -w2a3a

echo ' 2a 3a 1a ' > jenny_err.tmp
./jenny 2 2 2 -ojenny_err.tmp

echo ' 1a 2ab 3a ' > jenny_err.tmp
./jenny 2 2 2 -ojenny_err.tmp

echo ' 1a 2a 3a 4a ' > jenny_err.tmp
./jenny 2 2 2 -ojenny_err.tmp

echo ' 1a 2a 3aa' > jenny_err.tmp
./jenny 2 2 2 -ojenny_err.tmp

echo ' 1a 2f 3a ' > jenny_err.tmp
./jenny 2 2 2 -ojenny_err.tmp

echo ' 1a 2. 3a ' > jenny_err.tmp
./jenny 2 2 2 -ojenny_err.tmp

./jenny 2 2 2 -ozilphendia.org

# crashes, wrong results, fixed 040302
./jenny -n1 2 2 > jenny_err.tmp
./jenny 2 2 -ojenny_err.tmp
