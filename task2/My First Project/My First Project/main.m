//
//  main.m
//  My First Project
//
//   
//

#import <Foundation/Foundation.h>
#import "Factorial.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Factorial *factorial = [[Factorial alloc] init];
        [factorial printFirstNFactorials:10];
    }
    return 0;
}
