//
//  ZULetterKeysView.m
//  ZUKeyboardTest
//
//  Created by Xapek Lernov on 9/27/17.
//  Copyright © 2017 Xapek86. All rights reserved.
//

#import "ZULetterKeysView.h"



static CGFloat buttonHeight = 40;



@implementation ZULetterKeysView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame 
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self layoutButtons];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self)
    {
        [self layoutButtons];
    }
    
    return self;
}

-(void) layoutButtons
{
    ZUAlphabet* qwertyAlpha = [ZUAlphabet qwertyAlpha];
    
    CGFloat buttonWidth = [UIScreen mainScreen].bounds.size.width/qwertyAlpha.maxRow;
    CGFloat currentHeigt = 0;
    NSMutableArray* buttonsArray = [NSMutableArray array];
    int i;
    for (i = 0; i<[qwertyAlpha.letterRows count]; i++)
    {
        NSInteger lettersNumber = [qwertyAlpha.letterRows[i].letters count];
        
        UIStackView* stackView = [[UIStackView alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
        stackView.axis = UILayoutConstraintAxisHorizontal;
        stackView.distribution = UIStackViewDistributionFillEqually;
        stackView.translatesAutoresizingMaskIntoConstraints = NO;
        [self addSubview:stackView];
        
        NSLayoutConstraint* width = [stackView.widthAnchor constraintEqualToConstant:buttonWidth*lettersNumber];
        NSLayoutConstraint* center = [stackView.centerXAnchor constraintEqualToAnchor:self.centerXAnchor];
        NSLayoutConstraint* top = [NSLayoutConstraint constraintWithItem:stackView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1 constant:i*buttonHeight];
        NSLayoutConstraint* height = [NSLayoutConstraint constraintWithItem:stackView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:buttonHeight];
        [self addConstraints:@[width, center, top, height]];
        
        
        
        for (ZULetter* letter in [qwertyAlpha.letterRows[i] letters])
        {
            ZUButtonView* button = [[ZUButtonView alloc] initWithFrame:CGRectMake(0, 0, 30, 40)];
            [button setLetter:letter];
            button.translatesAutoresizingMaskIntoConstraints = NO;
            [stackView addArrangedSubview:button];
            button.delegate = self;
            [buttonsArray addObject:button];
        }
        currentHeigt += buttonHeight;
    }
    self.viewHeight = (buttonHeight)*(i+1);

    self.letterButtons = buttonsArray;
}

#pragma mark - ZUKeyboardButtonDelegate

-(void) buttonPressed:(NSString*) button
{
    [self.delegate buttonPressed:button];
}




@end
