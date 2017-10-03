//
//  View03.m
//  ZUKeyboardTest
//
//  Created by Xapek Lernov on 9/25/17.
//  Copyright © 2017 Xapek86. All rights reserved.
//

#import "View03.h"

@implementation View03
- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        NSBundle* bund = [NSBundle bundleForClass:[View03 class]];
        NSArray* array = [bund loadNibNamed:@"View03" owner:self options:nil];
        [self addSubview:array[0]];
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
