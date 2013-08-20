//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Victor Lourng on 8/19/13.
//  Copyright (c) 2013 Victor Lourng. All rights reserved.
//

#import "CalculatorBrain.h"

@interface CalculatorBrain();
@property (nonatomic, strong) NSMutableArray *operandStack;
@end

@implementation CalculatorBrain;

@synthesize operandStack = _operandStack;

- (NSMutableArray *)operandStack
{
    if (_operandStack == nil) _operandStack = [[NSMutableArray alloc] init];
    return _operandStack;
}

- (void)pushOperand: (double)operand
{
    [self.operandStack addObject:[NSNumber numberWithDouble:operand]];
}

- (double)popOperand
{
    NSNumber *operandObject = [self.operandStack lastObject];
    if (operandObject) [self.operandStack removeLastObject];
    return [operandObject doubleValue];
}

- (double)perfomOperation: (NSString *)operation
{
    double result = 0;
    NSLog(@"operd pressed = %@", operation);

    // calculate result
    if ([operation isEqualToString:@"+"]) {
        result = [self popOperand] + [self popOperand];
    } else if ([@"-" isEqualToString:operation]) {
        result = [self popOperand] - [self popOperand];
    } else if ([@"*" isEqualToString:operation]) {
        result = [self popOperand] * [self popOperand];
    } else if ([@"/" isEqualToString:operation]) {
        result = [self popOperand] / [self popOperand];
    }
    
    [self pushOperand:result];
        
    return result;
}

@end
