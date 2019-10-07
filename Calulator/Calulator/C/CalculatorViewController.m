//
//  CalculatorViewController.m
//  Calulator
//
//  Created by 岳靖翔 on 2019/9/28.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "CalculatorViewController.h"

@interface CalculatorViewController ()
@property NSInteger a;
@end

@implementation CalculatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _a = 0;
    _rootView = [[CalculatorView alloc] initWithFrame:[UIScreen mainScreen].bounds ];
    _Model = [[CalculatorModel alloc]init];
   [self.view addSubview:_rootView];
    self.textString = [[NSMutableString alloc] initWithString:@""];
    self.textStringShow = [[NSMutableString alloc] initWithString:@""];
    
//    for (OPERButton * button in [self.rootView subviews] ) {
//        [button addTarget:self action:@selector(add:) forControlEvents:UIControlEventTouchUpInside];
//    }
//    for (ThreeButton * button in [self.rootView subviews]) {
//        [button addTarget:self action:@selector(Add2:) forControlEvents:UIControlEventTouchUpInside];
//    }
//    for (DATAButton *button in [self.rootView subviews] ) {
//        [button addTarget:self action:@selector(Add3:) forControlEvents:UIControlEventTouchUpInside];
//    }
//    for (UIButton *button in [self.rootView subviews]) {
//        [button addTarget:self action:@selector(Add6:) forControlEvents:UIControlEventTouchUpInside];
//    }
    
//}
    [self.rootView.chuaddButton addTarget:self action:@selector(Add1) forControlEvents:UIControlEventTouchUpInside];
      [self.rootView.mulButton addTarget:self action:@selector(Add2) forControlEvents:UIControlEventTouchUpInside];
      [self.rootView.subtractionButton addTarget:self action:@selector(Add3) forControlEvents:UIControlEventTouchUpInside];
      [self.rootView.addButton addTarget:self action:@selector(Add4) forControlEvents:UIControlEventTouchUpInside];
    [self.rootView.endButton addTarget:self action:@selector(Add5) forControlEvents:UIControlEventTouchUpInside];
    [self.rootView.acButton addTarget:self action:@selector(Add6) forControlEvents:UIControlEventTouchUpInside];
     [self.rootView.leftButton addTarget:self action:@selector(Add7) forControlEvents:UIControlEventTouchUpInside];
     [self.rootView.rightButton addTarget:self action:@selector(Add8) forControlEvents:UIControlEventTouchUpInside];
     [self.rootView.zeroButton addTarget:self action:@selector(dataAdd0) forControlEvents:UIControlEventTouchUpInside];
    [self.rootView.oneButton addTarget:self action:@selector(dataAdd1) forControlEvents:UIControlEventTouchUpInside];
     [self.rootView.twoButton addTarget:self action:@selector(dataAdd2) forControlEvents:UIControlEventTouchUpInside];
     [self.rootView.threeButton addTarget:self action:@selector(dataAdd3) forControlEvents:UIControlEventTouchUpInside];
     [self.rootView.fourButton addTarget:self action:@selector(dataAdd4) forControlEvents:UIControlEventTouchUpInside];
     [self.rootView.fiveButton addTarget:self action:@selector(dataAdd5) forControlEvents:UIControlEventTouchUpInside];
     [self.rootView.sixButton addTarget:self action:@selector(dataAdd6) forControlEvents:UIControlEventTouchUpInside];
     [self.rootView.sevenButton addTarget:self action:@selector(dataAdd7) forControlEvents:UIControlEventTouchUpInside];
     [self.rootView.eightButton addTarget:self action:@selector(dataAdd8) forControlEvents:UIControlEventTouchUpInside];
     [self.rootView.nineButton addTarget:self action:@selector(dataAdd9) forControlEvents:UIControlEventTouchUpInside];
    [self.rootView.spotButton addTarget:self action:@selector(dataAdd) forControlEvents:UIControlEventTouchUpInside];
}
-(BOOL)select {
    if (_a==1) {
        return false;
    }
    else
        return true;
}
-(void) Add1 {
    if([self select]) {
     [self.textString appendString:@"÷"];
  [self.textStringShow appendString:@"/"];
    self.rootView.textLabel.text = self.textString ;
    
  const char * a =[self.textStringShow UTF8String];
   printf("%c",a[0]);
        _a = 1;
        
        //self.rootView.chuaddButton.backgroundColor = [UIColor whiteColor];
       // [self.rootView.chuaddButton setTitleColor:[UIColor orangeColor] forState:UIControlEventTouchUpInside];
       // self.rootView.chuaddButton.selected = NO;
        
    }else {
       
    }
}
    

-(void) Add2{
    if([self select]) {
    [self.textString appendString:@"×"];
  [self.textStringShow appendString:@"*"];
    self.rootView.textLabel.text = self.textString ;
        _a = 2;
//        self.rootView.mulButton.backgroundColor = [UIColor whiteColor];
//        [self.rootView.mulButton setTitleColor:[UIColor colorWithRed:0.96f green:0.53f blue:0.00f alpha:1.00f] forState:UIControlStateNormal];
        
      
}
    else {
        
    }
}
-(void) Add3 {
    if([self select]){
    [self.textString appendString:@"-"];
    [self.textStringShow appendString:@"-"];
    self.rootView.textLabel.text = self.textString ;
//        self.rootView.subtractionButton.backgroundColor = [UIColor whiteColor];
//        [self.rootView.subtractionButton setTitleColor:[UIColor colorWithRed:0.96f green:0.53f blue:0.00f alpha:1.00f] forState:UIControlStateNormal];
        
        _a = 3;
}
}
-(void) Add4{
    if([self select]){
     
    [self.textString appendString:@"+"];
     [self.textStringShow appendString:@"+"];
    self.rootView.textLabel.text = self.textString ;
//        self.rootView.addButton.backgroundColor = [UIColor whiteColor];
//        [self.rootView.addButton setTitleColor:[UIColor colorWithRed:0.96f green:0.53f blue:0.00f alpha:1.00f] forState:UIControlStateNormal];
        _a = 4;
}
}
-(void) Add5 {
    
    
     const char * a =[self.textStringShow UTF8String];
    if([_Model piPei:a]){
  double b = [_Model solve:a];
     NSNumber * c = [NSNumber numberWithFloat:b];
    self.rootView.textLabel.text = [NSString  stringWithFormat:@"%@",c];
    }
    else {
        self.rootView.textLabel.text  = @"Error";
    }
    _a = 5;
//    self.rootView.endButton.backgroundColor = [UIColor whiteColor];
//    [self.rootView.endButton setTitleColor:[UIColor colorWithRed:0.96f green:0.53f blue:0.00f alpha:1.00f] forState:UIControlStateNormal];
    

    
}
-(void) Add6 {
    [self.textString setString:@""];
     [self.textStringShow setString:@""];
    self.rootView.textLabel.text = self.textString ;
//    for (OPERButton * button in [self.rootView subviews] ) {
//        if(button.tag == _a)
//            button.backgroundColor =  [UIColor colorWithRed:0.96f green:0.53f blue:0.00f alpha:1.00f];
//        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//
//    }
    
    _a = 0;
    
}
-(void) Add7 {
    [self.textString appendString:@"("];
     [self.textStringShow appendString:@"("];
    self.rootView.textLabel.text = self.textString ;
//    for (OPERButton * button in [self.rootView subviews] ) {
//        if(button.tag == _a)
//            button.backgroundColor =  [UIColor colorWithRed:0.96f green:0.53f blue:0.00f alpha:1.00f];
//        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//
//    }
    
    _a = 0;
    
}
-(void) Add8 {
    [self.textString appendString:@")"];
     [self.textStringShow appendString:@")"];
    self.rootView.textLabel.text = self.textString ;
//    for (OPERButton * button in [self.rootView subviews] ) {
//        if(button.tag == _a)
//            button.backgroundColor =  [UIColor colorWithRed:0.96f green:0.53f blue:0.00f alpha:1.00f];
//        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//
//    }
    
    _a = 0;
    
}
-(void) dataAdd0 {
    [self.textString appendString:@"0"];
     [self.textStringShow appendString:@"0"];
    self.rootView.textLabel.text = self.textString ;
//    for (OPERButton * button in [self.rootView subviews] ) {
//        if(button.tag == _a)
//          button.backgroundColor =  [UIColor colorWithRed:0.96f green:0.53f blue:0.00f alpha:1.00f];
//        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//
//    }

    _a = 0;
    
}

-(void) dataAdd1 {
    [self.textString appendString:@"1"];
     [self.textStringShow appendString:@"1"];
    self.rootView.textLabel.text = self.textString ;
//    for (OPERButton * button in [self.rootView subviews] ) {
//        if(button.tag == _a)
//            button.backgroundColor =  [UIColor colorWithRed:0.96f green:0.53f blue:0.00f alpha:1.00f];
//        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//
//    }
     _a = 0;
    
}
-(void) dataAdd2 {
    [self.textString appendString:@"2"];
     [self.textStringShow appendString:@"2"];
    self.rootView.textLabel.text = self.textString ;
//    for (OPERButton * button in [self.rootView subviews] ) {
//        if(button.tag == _a)
//            button.backgroundColor =  [UIColor colorWithRed:0.96f green:0.53f blue:0.00f alpha:1.00f];
//        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//
//    }
     _a = 0;
    
}
-(void) dataAdd3 {
    [self.textString appendString:@"3"];
     [self.textStringShow appendString:@"3"];
    self.rootView.textLabel.text = self.textString ;
//    for (OPERButton * button in [self.rootView subviews] ) {
//        if(button.tag == _a)
//            button.backgroundColor =  [UIColor colorWithRed:0.96f green:0.53f blue:0.00f alpha:1.00f];
//        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//
//    }
     _a = 0;
    
}
-(void) dataAdd4 {
    [self.textString appendString:@"4"];
     [self.textStringShow appendString:@"4"];
    self.rootView.textLabel.text = self.textString ;
//    for (OPERButton * button in [self.rootView subviews] ) {
//        if(button.tag == _a)
//            button.backgroundColor =  [UIColor colorWithRed:0.96f green:0.53f blue:0.00f alpha:1.00f];
//        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//
//    }
     _a = 0;
}
-(void) dataAdd5 {
    [self.textString appendString:@"5"];
     [self.textStringShow appendString:@"5"];
    self.rootView.textLabel.text = self.textString ;
//    for (OPERButton * button in [self.rootView subviews] ) {
//        if(button.tag == _a)
//            button.backgroundColor =  [UIColor colorWithRed:0.96f green:0.53f blue:0.00f alpha:1.00f];
//        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//
//    }
     _a = 0;
    
}
-(void) dataAdd6 {
    [self.textString appendString:@"6"];
     [self.textStringShow appendString:@"6"];
    self.rootView.textLabel.text = self.textString ;
//    for (OPERButton * button in [self.rootView subviews] ) {
//        if(button.tag == _a)
//            button.backgroundColor =  [UIColor colorWithRed:0.96f green:0.53f blue:0.00f alpha:1.00f];
//        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//
//    }
     _a = 0;
    
}
-(void) dataAdd7 {
    [self.textString appendString:@"7"];
     [self.textStringShow appendString:@"7"];
    self.rootView.textLabel.text = self.textString ;
//    for (OPERButton * button in [self.rootView subviews] ) {
//        if(button.tag == _a)
//            button.backgroundColor =  [UIColor colorWithRed:0.96f green:0.53f blue:0.00f alpha:1.00f];
//        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//
//    }
     _a = 0;
    
}
-(void) dataAdd8 {
    [self.textString appendString:@"8"];
     [self.textStringShow appendString:@"8"];
    self.rootView.textLabel.text = self.textString ;
//    for (OPERButton * button in [self.rootView subviews] ) {
//        if(button.tag == _a)
//            button.backgroundColor =  [UIColor colorWithRed:0.96f green:0.53f blue:0.00f alpha:1.00f];
//        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//
//    }
     _a = 0;
}
-(void) dataAdd9{
    [self.textString appendString:@"9"];
     [self.textStringShow appendString:@"9"];
    self.rootView.textLabel.text = self.textString ;
//    if(_a!=0)
//    {
//    for (OPERButton * button in [self.rootView subviews] ) {
//        if(button.tag == _a)
//            button.backgroundColor =  [UIColor colorWithRed:0.96f green:0.53f blue:0.00f alpha:1.00f];
//        [button setTitleColor:[UIColor orangeColor] forState:UIControlStateSelected];
//
//    }
//    }
     _a = 0;
    
}
-(void) dataAdd {
    [self.textString appendString:@"."];
     [self.textStringShow appendString:@"."];
    self.rootView.textLabel.text = self.textString ;
//    for (OPERButton * button in [self.rootView subviews] ) {
//        if(button.tag == _a)
//            button.backgroundColor =  [UIColor colorWithRed:0.96f green:0.53f blue:0.00f alpha:1.00f];
//        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//
//    }
     _a = 0;
}




@end
