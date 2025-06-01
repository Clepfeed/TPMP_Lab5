//
//  main.m
//  task3Project
//
//   
//

#import <Foundation/Foundation.h>
#import "ArrayOperations.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        ArrayOperations *arrayOps = [[ArrayOperations alloc] init];
        
        
        NSArray *numbers = @[@10, @20, @30, @40, @50];
        
        
        NSLog(@"Printing immutable array:");
        [arrayOps printArray:numbers];
        
       
        NSLog(@"\nFilling mutable array:");
        [arrayOps createAndFillMutableArray];
        
        NSLog(@"\nImmutable array count: %lu", [arrayOps getImmutableArrayCount]);
        NSLog(@"Mutable array count: %lu", [arrayOps getMutableArrayCount]);
        
        // Добавление элемента
        NSLog(@"\nAdding element 100");
        [arrayOps addElement:@100];
        
        // Вставка элемента по индексу
        NSLog(@"Inserting element 200 at index 1");
        [arrayOps insertElement:@200 atIndex:1];
        
        // Удаление последнего элемента
        NSLog(@"Removing last element");
        [arrayOps removeLastElement];
        
        // Удаление элемента по индексу
        NSLog(@"Removing element at index 0");
        [arrayOps removeElementAtIndex:0];
        
        // Подсчет суммы элементов
        NSInteger sum = [arrayOps calculateArraySum:numbers];
        NSLog(@"\nSum of numbers array: %ld", (long)sum);
        
        // Удаление всех элементов
        NSLog(@"\nRemoving all elements");
        [arrayOps removeAllElements];
    }
    return 0;
}
