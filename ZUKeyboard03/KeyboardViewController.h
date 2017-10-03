//
//  KeyboardViewController.h
//  ZUKeyboard03
//
//  Created by Xapek Lernov on 9/25/17.
//  Copyright © 2017 Xapek86. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZUButtonView.h"



typedef enum : NSUInteger
{
    ZEKeyboardLayoutLettersType,
    ZEKeyboardLayoutNumbersType,
    ZEKeyboardLayoutSymbolsType,
    ZEKeyboardLayoutSymbolsAndNumbersType
} ZEKeyboardLayoutType;

@interface KeyboardViewController : UIInputViewController <ZUKeyboardButtonDelegate>
@property (strong, nonatomic) IBOutlet UIView *keyboardView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *letterKeysViewHeight;

@property (strong, nonatomic) NSMutableDictionary<NSString*, UIView*>* keyboardLayoutViews;
@property (strong, nonatomic) UIView* currentKeboardLayout;
@property (strong, nonatomic) UIView* hintView;

@end
