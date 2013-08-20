//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Victor Lourng on 8/19/13.
//  Copyright (c) 2013 Victor Lourng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject

- (void)pushOperand: (double)operand;
- (double)perfomOperation: (NSString *)operation;

@end  