//
//  ZULetterButtonView.m
//  ZUKeyboardTest
//
//  Created by Xapek Lernov on 9/27/17.
//  Copyright © 2017 Xapek86. All rights reserved.
//

#import "ZULetterButtonView.h"

@implementation ZULetterButtonView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [[NSBundle mainBundle] loadNibNamed:@"LetterButton" owner:self options:nil];
        [self addSubview:self.view];
        self.view.frame = CGRectMake(10, 10, 100, 100);
        self.view.translatesAutoresizingMaskIntoConstraints = NO;
        self.frontView.layer.masksToBounds = YES;
        self.frontView.layer.cornerRadius = 3;
        
        
        
        // CONSTRAINTS
        
        NSLayoutConstraint* left = [NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeading multiplier:1.0 constant:0];
        
        NSLayoutConstraint* right = [NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:0];
        
        NSLayoutConstraint* top = [NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1.0 constant:0];
        
        NSLayoutConstraint* bottom = [NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0];
        
        [self addConstraints:@[left, right, top, bottom]];
        
    }
    return self;
}

-(void) setLetter:(ZULetter *)letter
{
    _letter = letter;
    self.buttonTitle.text = _letter.symbolsArray[0];
    [self.button addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];
}

-(void) buttonPressed
{
    [self.delegate buttonPressed:self.buttonTitle.text];
    NSLog(@"%@", self.buttonTitle.text);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end


