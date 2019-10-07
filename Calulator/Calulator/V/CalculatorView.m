//
//  CalculatorView.m
//  Calulator
//
//  Created by 岳靖翔 on 2019/9/28.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "CalculatorView.h"

#define Width [UIScreen mainScreen].bounds.size.width
#define Height [UIScreen mainScreen].bounds.size.height

@implementation CalculatorView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _textLabel = [[UILabel alloc] init];
        [self addSubview:_textLabel];
        self.textLabel.textColor = [UIColor whiteColor];
        self.textLabel.font = [UIFont systemFontOfSize:36];
        self.textLabel.textAlignment = NSTextAlignmentRight;
        self.textLabel.numberOfLines = 0;
        _acButton = [[ThreeButton alloc] init];
        [self addSubview:_acButton];
        _leftButton = [[ThreeButton alloc] init];
        [self addSubview:_leftButton];
        _rightButton  = [[ThreeButton alloc] init];
        [self addSubview:_rightButton];
        _zeroButton = [[DATAButton alloc] init];
        [self addSubview:_zeroButton];
        _oneButton = [[DATAButton alloc] init];
        [self addSubview:_oneButton];
        _twoButton = [[DATAButton alloc] init];
        [self addSubview:_twoButton];
        _threeButton = [[DATAButton alloc] init];
        [self addSubview: _threeButton];
        _fourButton = [[DATAButton alloc] init];
        [self addSubview:_fourButton];
        _fiveButton = [[DATAButton alloc] init];
        [self addSubview: _fiveButton];
        _sixButton = [[DATAButton alloc]init];
        [self addSubview:_sixButton];
        _sevenButton = [[DATAButton alloc] init];
        [self addSubview:_sevenButton];
        _eightButton = [[DATAButton alloc] init];
        [self addSubview:_eightButton];
        _nineButton  = [[DATAButton alloc] init];
        [self addSubview:_nineButton];
        _spotButton = [[DATAButton alloc] init];
        [self addSubview:_spotButton];
        _addButton = [[OPERButton alloc]init];
        [self addSubview:_addButton];
        _subtractionButton = [[OPERButton alloc] init];
        [self addSubview:_subtractionButton];
        _mulButton = [[OPERButton alloc] init];
        [self addSubview:_mulButton];
        _chuaddButton = [[OPERButton alloc] init];
        [self addSubview:_chuaddButton];
        _endButton = [[OPERButton alloc] init];
        [self addSubview:_endButton];
        [_zeroButton setTitle:@"0" forState:UIControlStateNormal];
        [_oneButton setTitle:@"1" forState:UIControlStateNormal];
        [_twoButton setTitle:@"2" forState:UIControlStateNormal];
        [_threeButton setTitle:@"3" forState:UIControlStateNormal];
        [_fourButton setTitle:@"4" forState:UIControlStateNormal];
        [_fiveButton setTitle:@"5" forState:UIControlStateNormal];
        [_sixButton setTitle:@"6" forState:UIControlStateNormal];
        [_sevenButton setTitle:@"7" forState:UIControlStateNormal];
        [_eightButton setTitle:@"8" forState:UIControlStateNormal];
        [_nineButton setTitle:@"9" forState:UIControlStateNormal];
        [_spotButton setTitle:@"." forState:UIControlStateNormal];
        [_acButton setTitle:@"AC" forState:UIControlStateNormal];
        [_addButton setTitle:@"+" forState:UIControlStateNormal];
        [_subtractionButton setTitle:@"-" forState:UIControlStateNormal];
        [_mulButton setTitle:@"×" forState:UIControlStateNormal];
        [_chuaddButton setTitle:@"÷" forState:UIControlStateNormal];
        [_endButton setTitle:@"=" forState:UIControlStateNormal];
        [_leftButton setTitle:@"(" forState:UIControlStateNormal];
        [_rightButton setTitle:@")" forState:UIControlStateNormal];
//        _rightButton.frame = CGRectMake(100, 100, 50, 50);
        [_chuaddButton setTitleColor:[UIColor colorWithRed:0.96f green:0.53f blue:0.00f alpha:1.00f] forState:UIControlStateSelected];
        _chuaddButton.tag = 1;
        _mulButton.tag = 2;
        _subtractionButton.tag = 3;
        _addButton.tag = 4;
        _endButton.tag = 5;
        
    }
    
    return self;
}
- (void)layoutSubviews {
    UIEdgeInsets padding = UIEdgeInsetsMake(10, 10, 20, 20);
    CGFloat pad = 23;
    CGFloat paddingx = 20;
    
    
    [_textLabel setFrame:CGRectMake(0, 20, Width, Height/4)];
    [_acButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_textLabel.mas_bottom).offset(20);
        make.width.mas_equalTo( 80);
        make.height.mas_equalTo(80);
        make.left.mas_equalTo(20); //make.left.equalTo(0).with.offset(padding.left);
        //             make.right.equalTo(superview.mas_right).with.offset(-padding.right);
        //
    }];
    [_leftButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_textLabel.mas_bottom).offset(20);
        make.left.equalTo(_acButton.mas_right).with.offset(20);
        make.size.mas_equalTo(CGSizeMake(80, 80));
        
    }];
    [_rightButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_textLabel.mas_bottom).offset(20);
        make.left.equalTo(_leftButton.mas_right).with.offset(20);
        make.size.mas_equalTo(CGSizeMake(80, 80));
        
    }];
    [_chuaddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_textLabel.mas_bottom).offset(20);
        make.left.equalTo(_rightButton.mas_right).with.offset(20);
        make.size.mas_equalTo(CGSizeMake(80, 80));
        
    }];
    [_sevenButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_acButton.mas_bottom).offset(pad);
        make.left.equalTo(@0).with.offset(20);
        make.size.mas_equalTo(CGSizeMake(80, 80));
        
    }];
    [_fourButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_sevenButton.mas_bottom).offset(pad);
        make.left.equalTo(@0).with.offset(20);
        make.size.mas_equalTo(CGSizeMake(80, 80));
        
    }];
    [_oneButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_fourButton.mas_bottom).offset(pad);
        make.left.equalTo(@0).with.offset(20);
        make.size.mas_equalTo(CGSizeMake(80, 80));
        
    }];
    [_zeroButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_oneButton.mas_bottom).offset(pad);
        make.left.equalTo(@0).with.offset(20);
        make.size.mas_equalTo(CGSizeMake(180, 80));
        
    }];
    [self.eightButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.leftButton.mas_bottom).offset(pad);
        make.left.equalTo(self.sevenButton.mas_right).offset(paddingx);
        make.size.mas_equalTo(CGSizeMake(80, 80));
    }];
   [ self.nineButton mas_makeConstraints:^(MASConstraintMaker *make) {
       make.top.equalTo(self.leftButton.mas_bottom).offset(pad);
        make.left.equalTo(self.eightButton.mas_right).offset(paddingx);
       make.size.mas_equalTo(CGSizeMake(80, 80));
    }];
    [ self.nineButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.leftButton.mas_bottom).offset(pad);
        make.left.equalTo(self.eightButton.mas_right).offset(paddingx);
        make.size.mas_equalTo(CGSizeMake(80, 80));
    }];
    [ self.mulButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.leftButton.mas_bottom).offset(pad);
        make.left.equalTo(self.nineButton.mas_right).offset(paddingx);
        make.size.mas_equalTo(CGSizeMake(80, 80));
    }];
    [self.fiveButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.eightButton.mas_bottom).offset(pad);
        make.left.equalTo(self.sevenButton.mas_right).offset(paddingx);
        make.size.mas_equalTo(CGSizeMake(80, 80));
    }];
    [self.twoButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.fiveButton.mas_bottom).offset(pad);
        make.left.equalTo(self.sevenButton.mas_right).offset(paddingx);
        make.size.mas_equalTo(CGSizeMake(80, 80));
    }];
    [self.spotButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.twoButton.mas_bottom).offset(pad);
        make.left.equalTo(self.zeroButton.mas_right).offset(paddingx);
        make.size.mas_equalTo(CGSizeMake(80, 80));
    }];
    [self.sixButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.nineButton.mas_bottom).offset(pad);
        make.left.equalTo(self.eightButton.mas_right).offset(paddingx);
        make.size.mas_equalTo(CGSizeMake(80, 80));
    }];
    [self.threeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.sixButton.mas_bottom).offset(pad);
        make.left.equalTo(self.eightButton.mas_right).offset(paddingx);
        make.size.mas_equalTo(CGSizeMake(80, 80));
    }];
    [self.subtractionButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.nineButton.mas_bottom).offset(pad);
        make.left.equalTo(self.nineButton.mas_right).offset(paddingx);
        make.size.mas_equalTo(CGSizeMake(80, 80));
    }];
    [self.addButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.sixButton.mas_bottom).offset(pad);
        make.left.equalTo(self.nineButton.mas_right).offset(paddingx);
        make.size.mas_equalTo(CGSizeMake(80, 80));
    }];
    [self.endButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.threeButton.mas_bottom).offset(pad);
        make.left.equalTo(self.nineButton.mas_right).offset(paddingx);
        make.size.mas_equalTo(CGSizeMake(80, 80));
    }];
    
    
    
    
}
@end
