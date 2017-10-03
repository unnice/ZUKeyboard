//
//  ZUButton.m
//  ZUKeyboardTest
//
//  Created by Xapek86 on 9/18/17.
//  Copyright © 2017 Xapek86. All rights reserved.
//

#import "ZUButton.h"



@implementation ZUButton




- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self)
    {
       
        NSBundle* bundle = [NSBundle mainBundle];
        NSArray* array = [bundle loadNibNamed:@"ZUButton" owner:self options:nil];
        UIView* view = array[0];
        //[self addSubview:array[0]];
        [self addTarget:self action:@selector(ololo) forControlEvents:UIControlEventTouchUpInside];
        self.backgroundColor = [UIColor blueColor];
    }
    return self;

}
-(void) ololo
{
    NSLog(@"OLOLO");
}

+ (instancetype)buttonWithType:(UIButtonType)buttonType
{
    ZUButton* button = [super buttonWithType:buttonType];
    if (button)
    {
        
        
        NSBundle* bundle = [NSBundle mainBundle];
        NSArray* array = [bundle loadNibNamed:@"ZUButton" owner:button options:nil];
        UIView* view = array[0];
        
        [button addSubview:view];
        [button addTarget:button action:@selector(ololo) forControlEvents:UIControlEventTouchUpInside];
        button.backgroundColor = [UIColor blueColor];
    }
    return button;
}


@end
    
