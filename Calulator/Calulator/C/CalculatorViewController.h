//
//  CalculatorViewController.h
//  Calulator
//
//  Created by 岳靖翔 on 2019/9/28.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorView.h"
#import "CalculatorModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface CalculatorViewController : UIViewController
@property (nonatomic,strong) CalculatorView * rootView;
@property(nonatomic, strong) NSMutableString *textString;
@property(nonatomic, strong) NSMutableString *textStringShow;
@property CalculatorModel *Model;
@end

NS_ASSUME_NONNULL_END
