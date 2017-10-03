//
//  ZUKeyboardView.m
//  ZUKeyboardTest
//
//  Created by Xapek Lernov on 9/27/17.
//  Copyright © 2017 Xapek86. All rights reserved.
//

#import "ZUKeyboardView.h"

@implementation ZUKeyboardView

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [[NSBundle mainBundle] loadNibNamed:@"ZUKeyboardView" owner:self options:nil];
        [self addSubview:self.keyboardView];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
