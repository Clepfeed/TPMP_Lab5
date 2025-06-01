//
//  ArrayOperations.m
//  task3Project
//
//   
//

#import "ArrayOperations.h"

@interface ArrayOperations ()

@property (nonatomic, strong) NSArray *immutableArray;
@property (nonatomic, strong) NSMutableArray *mutableArray;
@end

@implementation ArrayOperations

- (instancetype)init {
    self = [super init];
    if (self) {
        _immutableArray = @[@1, @2, @3, @4, @5];
        _mutableArray = [[NSMutableArray alloc] init];
    }
    return self;
}

// Приватные методы
- (void)validateIndex:(NSUInteger)index {
    if (index >= [self.mutableArray count]) {
        @throw [NSException exceptionWithName:@"IndexOutOfBounds"
                                     reason:@"Index is out of bounds"
                                   userInfo:nil];
    }
}


- (void)printArray:(NSArray *)array {
    NSLog(@"Array contents: %@", array);
}

- (void)createAndFillMutableArray {
    char input[256];
    NSLog(@"Enter elements (type 'done' to finish):");
    
    while (1) {
        printf("Enter element: ");
        scanf("%s", input);
        
        if (strcmp(input, "done") == 0) {
            break;
        }
        
        NSNumber *number = @(atoi(input));
        [self.mutableArray addObject:number];
    }
}

- (void)addElement:(id)element {
    [self.mutableArray addObject:element];
}

- (void)insertElement:(id)element atIndex:(NSUInteger)index {
    [self validateIndex:index];
    [self.mutableArray insertObject:element atIndex:index];
}

- (void)removeLastElement {
    if ([self.mutableArray count] > 0) {
        [self.mutableArray removeLastObject];
    }
}

- (void)removeElementAtIndex:(NSUInteger)index {
    [self validateIndex:index];
    [self.mutableArray removeObjectAtIndex:index];
}

- (void)removeAllElements {
    [self.mutableArray removeAllObjects];
}

- (NSInteger)calculateArraySum:(NSArray *)array {
    NSInteger sum = 0;
    for (NSNumber *number in array) {
        sum += [number integerValue];
    }
    return sum;
}

- (NSUInteger)getImmutableArrayCount {
    return [self.immutableArray count];
}

- (NSUInteger)getMutableArrayCount {
    return [self.mutableArray count];
}

@end
