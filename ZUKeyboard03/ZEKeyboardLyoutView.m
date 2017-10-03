//
//  ZEKeyboardLyoutView.m
//  ZUKeyboard03
//
//  Created by Xapek Lernov on 10/3/17.
//  Copyright © 2017 Xapek86. All rights reserved.
//

#import "ZEKeyboardLyoutView.h"

@implementation ZEKeyboardLyoutView

- (instancetype)initWithFrame:(CGRect)frame andKeyboardType:(ZEKeyboardLayoutType) keyboardType
{
    self = [super initWithFrame:frame];
    if (self) {
        [self loadKeyboard:keyboardType];
    }
    return self;
}

-(void) loadKeyboard:(ZEKeyboardLayoutType) keyboardType
{
    
}

@end
