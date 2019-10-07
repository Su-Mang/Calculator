//
//  CalculatorModel.m
//  Calulator
//
//  Created by 岳靖翔 on 2019/9/28.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "CalculatorModel.h"

@implementation CalculatorModel

-(int)cmp:(char)c {
    if (c == '(')
        return 0;
    else if (c == '+' || c == '-')
        return 1;
    else if (c =='*' || c == '/')
        return 2;
    return 0;
}

-(double)subans:(double)x :(double)y :(char)c {
    
    if (c == '+')
        return x + y;
    if (c == '-')
        return x - y;
    if (c == '*')
        return x * y;
    if (c == '/')
        return x / y;
    return 0;
}
- (void)pop:(Stack *)stack {
    stack->top = stack->top-1;
}
- (Stack *)initStack{
    Stack *stackSymbol = malloc(sizeof(Stack));
    stackSymbol->top = -1;
    return stackSymbol;

}
- (void)push:(char )s :(Stack *)stack {
    stack->top++;
    stack->data[stack->top] = s;
}
- (BOOL)isEmpty:(Stack *)stack {
    if (stack->top == -1) {
        return true;
    }
    else
    {
        return false;
    }
}


- (double)solve:(char *)s{
    char ans[500];
    int k = 0;
    int len = strlen(s);
    s[len] = '=';
    Stack *oc = malloc(sizeof(Stack));
    oc->top = -1;
    //中缀-->后缀；
    StackNum *on = malloc(sizeof(StackNum));
    on->top = -1;
    for(int i = 0; i <= len; i++) {
        if ((s[i]>='0'&&s[i] <= '9')|| s[i] =='.')
            ans[k++] = s[i];
        else if(s[i] == '+'|| s[i] == '-'|| s[i] == '*'||s[i] == '/') {
            ans[k++] = '#';
          
            if ([self isEmpty:oc])
                 [self push:s[i] :oc ];
            else {
                //     2+(3+2*3-2*1)
               
                while(![self isEmpty:oc]&& [self cmp:oc->data[oc->top]] >=  [self cmp:s[i]]) {
                    ans[k++] = oc->data[oc->top];
                    oc->top--;
                }
                [ self push:s[i] :oc ];
            }
            
        }
        else if(s[i] == '(') {
        [ self push:s[i] :oc ];
        }
        else if(s[i]==')') {
            while(oc->data[oc->top]!='(') {
                ans[k++] = oc->data[oc->top];
                oc->top--;
            }
           oc->top--;;
        }
        else if(s[i] == '=') {
            while(![self isEmpty:oc]) {
                ans[k++] = oc->data[oc->top];
                oc->top--;
            }
        }
    }
    //ans[k++] = '=';
    //得到后缀表达式 ans;
    //  printf("\n");
    puts(ans);
    
    //后缀表达式求值；
    int pos = 0;
    for(int i = 0; i < k; i++) {
        pos = 0;
        if (ans[i] >= '0'&& ans[i] <= '9')//对操作数进行操作；
        {
            for(int j=i; j<k; j++) {
                if ((ans[j] >= '0'&& ans[j] <= '9')|| ans[j] == '.')
                    pos++;
                else
                    break;
            }
            
            double k = 1, sum1 = 0, sum2 = 0;
            for(int j = i + pos - 1; j >= i; j--) {
                if (ans[j] >= '0' && ans[j] <= '9') {
                    sum1 += (ans[j] - '0') * k;
                    k *= 10;
                }
                else if(ans[j] == '.') {
                    sum1 /= k;
                    k = 1;
                    sum2 += sum1;
                    sum1 = 0;
                }
            }
            
            sum2 += sum1;
            on->top++;
            on->data[on->top]= sum2;
           // on.push(sum2);  //报操作数压入操作数栈中；
            i += pos - 1;
        }
        else if (ans[i] == '+'||
                 ans[i] == '-'|| ans[i] == '*'|| ans[i] == '/') {
            double x =on->data[on->top];
          on->top--;
            double y = on->data[on->top];
          on->top--;
           on->data[on->top ]= [self subans:y :x :ans[i] ];
      
        }
    }
   
    printf("%lf\n",on->data[on->top]); //处理操作数栈中只有一个操作数；
    return on->data[on->top];
}
- (BOOL)piPei:(char *)s {
    int len = strlen(s);
      for (int i = 0; i<len; i++) {
          if(s[i]=='('&&s[i+1]==')')
              return false;
      }
    
    Stack *stack = malloc(sizeof(Stack));
    stack->top = -1;
    for (int i = 0; i<len; i++) {
        if (s[i] == '(') {
            stack->top++;
        }
        if (s[i] == ')') {
            if(stack->top == -1)
                return false;
            stack->top--;
        }
    }
    if (stack->top == -1) {
        return true;
    }
    else {
        return false;
    }
    return false;
}




@end
