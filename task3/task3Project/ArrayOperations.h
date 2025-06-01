//
//  ArrayOperations.h
//  task3Project
//
//   
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ArrayOperations : NSObject

- (void)printArray:(NSArray *)array;
- (void)createAndFillMutableArray;
- (void)addElement:(id)element;
- (void)insertElement:(id)element atIndex:(NSUInteger)index;
- (void)removeLastElement;
- (void)removeElementAtIndex:(NSUInteger)index;
- (void)removeAllElements;
- (NSInteger)calculateArraySum:(NSArray *)array;
- (NSUInteger)getImmutableArrayCount;
- (NSUInteger)getMutableArrayCount;

@end

NS_ASSUME_NONNULL_END
