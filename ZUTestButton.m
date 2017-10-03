//
//  ZUTestButton.m
//  ZUKeyboardTest
//
//  Created by Xapek Lernov on 9/21/17.
//  Copyright © 2017 Xapek86. All rights reserved.
//

#import "ZUTestButton.h"

@implementation ZUTestButton

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self)
    {
        NSLog(@"here it is!");
        self.backgroundColor = [UIColor blueColor];
        NSLog(@"here it is!");
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
