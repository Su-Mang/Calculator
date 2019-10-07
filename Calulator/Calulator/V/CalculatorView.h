//
//  CalculatorView.h
//  Calulator
//
//  Created by 岳靖翔 on 2019/9/28.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OPERButton.h"
#import "DATAButton.h"
#import "ThreeButton.h"
#import <Masonry.h>
NS_ASSUME_NONNULL_BEGIN

@interface CalculatorView : UIView
@property (nonatomic,strong)UILabel *textLabel;
@property (nonatomic,strong)OPERButton * addButton;
@property (nonatomic,strong)OPERButton * subtractionButton;
@property (nonatomic,strong)OPERButton * mulButton;
@property (nonatomic,strong)OPERButton * chuaddButton;
@property (nonatomic,strong)OPERButton * endButton;
@property (nonatomic,strong)ThreeButton *leftButton;
@property (nonatomic,strong)ThreeButton *rightButton;
@property (nonatomic,strong)ThreeButton *acButton;
@property (nonatomic,strong)DATAButton *zeroButton;
@property (nonatomic,strong)DATAButton *oneButton;
@property (nonatomic,strong)DATAButton *twoButton;
@property (nonatomic,strong)DATAButton *threeButton;
@property (nonatomic,strong)DATAButton *fourButton;
@property (nonatomic,strong)DATAButton *fiveButton;
@property (nonatomic,strong)DATAButton *sixButton;
@property (nonatomic,strong)DATAButton *sevenButton;
@property (nonatomic,strong)DATAButton *eightButton;
@property (nonatomic,strong)DATAButton *nineButton;
@property (nonatomic,strong)DATAButton *spotButton;
@end

NS_ASSUME_NONNULL_END
