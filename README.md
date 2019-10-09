
## iOS (Objective-C) Code Challenge - Exponential Growth

*The king was a big chess enthusiast and had the habit of challenging wise visitors to a game of chess. One day a traveling sage was challenged by the king. To motivate his opponent the king offered any reward that the sage could name. The sage modestly asked just for a few grains of rice in the following manner: the king was to put a single grain of rice on the first chess square and double it on every consequent one.*

*Having lost the game and being a man of his word the king ordered a bag of rice to be brought to the chess board. Then he started placing rice grains according to the arrangement: 1 grain on the first square, 2 on the second, 4 on the third, 8 on the fourth and so on.*

*The king quickly realized that he was unable to fulfill his promise - on the sixty fourth square the king would have had to put more than 18,000,000,000,000,000,000 grains of rice which is equal to about 210 billion tons and is allegedly sufficient to cover the whole territory of India with a meter thick layer of rice. At ten grains of rice per square inch, the above amount requires rice fields covering twice the surface area of the Earth, oceans included.*

Your challenge is to write an Objective-C program that calculates the number of grains of rice on a chessboard given that the number on each square doubles the quantity of the preceding square. It must return both the number of grains on each square as well as the total number of grains on the board.

## Objectives

1. Implement the methods: `grainsOnSquareNumber:` and `grainsOnBoard` in the GrainsOfRice.m file
2. Your methods should pass all the unit tests in the provided project
3. Be mindful of the edges cases: 0 squares = 0 grains of rice, any negative number should return -1 as an error code.
4. Return -1 if the value is greater than 64 (that will overflow our `unsigned long long` variable!)

## Tips

1. For large number literals you may need to give the compiler a hint (L = long, LL = long long)

        unsigned long long expected = 29144844073709551615ULL; // unsigned long long
        
2. You can print the max value of a number (for example):

        NSLog(@"LONG_MAX:   %li",  LONG_MAX); // On a MacBook Pro 2018: LONG_MAX: 9223372036854775807
        NSLog(@"ULONG_LONG_MAX:   %llu",  ULONG_LONG_MAX);

## Stretch

1. Use [`NSDecimalNumber`](https://developer.apple.com/documentation/foundation/nsdecimalnumber) for even bigger numbers than `unsigned long long`. It can support up to 38 digit long numbers without losing precision.

        Max NSDecimalNumber: 3.402823669209387e+165
        Max NSDecimalNumber: 3402823669209384634633746074317682114550000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

2. Imagine if there were 127 squares on a chess board. How many grains of rice would there be? 
3. Can you calculate an exact number with `NSDecimalNumber` if there were 128 squares? Why? Why not?
