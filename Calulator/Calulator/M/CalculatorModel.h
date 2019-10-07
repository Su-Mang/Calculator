//
//  CalculatorModel.h
//  Calulator
//
//  Created by 岳靖翔 on 2019/9/28.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CalculatorModel : NSObject
typedef struct{
    char data[100];
    int top;
}Stack;
typedef struct{
float data[100];
    int top;
}StackNum;
-(int)cmp :(char)c;
-(double) subans:(double)x:(double)y:(char)c;
-(double)solve:(char*)s;
-(Stack*)initStack;
-(void)pop:(Stack*)stack ;
-(void)push:(char )s:(Stack*)stack;
-(BOOL)isEmpty:(Stack*)stack;
-(BOOL)piPei:(char*)s;

@end

NS_ASSUME_NONNULL_END
