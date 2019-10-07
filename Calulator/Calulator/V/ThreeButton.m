//
//  ThreeButton.m
//  Calulator
//
//  Created by 岳靖翔 on 2019/9/29.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "ThreeButton.h"

@implementation ThreeButton

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setTintColor:[UIColor blackColor]];;
        self.backgroundColor = [UIColor colorWithRed:0.65f green:0.65f blue:0.65f alpha:1.00f];
        self.layer.masksToBounds = YES;
        self.layer.cornerRadius = 40;
        self.titleLabel.font = [UIFont systemFontOfSize:32];
    }
    return self;
}

@end
