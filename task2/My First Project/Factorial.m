//
//  Factorial.m
//  My First Project
//
//   
//

#import "Factorial.h"

@implementation Factorial

- (NSInteger)calculateFactorial:(NSInteger)number {
    if (number <= 1) {
        return 1;
    }
    return number * [self calculateFactorial:number - 1];
}

- (void)printFirstNFactorials:(NSInteger)n {
    for (NSInteger i = 1; i <= n; i++) {
        NSInteger result = [self calculateFactorial:i];
        NSLog(@"Factorial of %ld = %ld", (long)i, (long)result);
    }
}

@end
