//
//  OPERButton.m
//  Calulator
//
//  Created by 岳靖翔 on 2019/9/29.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "OPERButton.h"

@implementation OPERButton

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setTintColor:[UIColor whiteColor]];
       self.backgroundColor = [UIColor colorWithRed:0.96f green:0.53f blue:0.00f alpha:1.00f];
        self.layer.masksToBounds = YES;
        self.layer.cornerRadius = 40;
        self.titleLabel.font = [UIFont systemFontOfSize:32];
   
    }
    return self;
}

@end
