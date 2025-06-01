//
//  Factorial.h
//  My First Project
//
//  
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Factorial : NSObject
- (NSInteger)calculateFactorial:(NSInteger)number;
- (void)printFirstNFactorials:(NSInteger)n;
@end

NS_ASSUME_NONNULL_END
