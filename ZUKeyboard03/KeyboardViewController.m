//
//  KeyboardViewController.m
//  ZUKeyboard03
//
//  Created by Xapek Lernov on 9/25/17.
//  Copyright © 2017 Xapek86. All rights reserved.
//

#import "KeyboardViewController.h"
#import "ZUAlphabet.h"
#import "ZULetterKeysView.h"

@interface KeyboardViewController ()
@property (nonatomic, strong) UIButton *nextKeyboardButton;

@end

@implementation KeyboardViewController

- (void)updateViewConstraints {
    [super updateViewConstraints];
    // Add custom view sizing constraints here
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // INIT keysLayoutView
    
    UIView* keyboardLayout = [[UIView alloc] init];
    [self.inputView addSubview:keyboardLayout];
    keyboardLayout.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSLayoutConstraint* left = [keyboardLayout.leftAnchor constraintEqualToAnchor:self.view.leftAnchor];
    NSLayoutConstraint* right = [keyboardLayout.rightAnchor constraintEqualToAnchor:self.view.rightAnchor];
    NSLayoutConstraint* bottom = [keyboardLayout.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor];
    NSLayoutConstraint* height = [keyboardLayout.heightAnchor constraintEqualToConstant:200];
    [self.inputView addConstraints:@[left, right, bottom, height]];
    
    self.currentKeboardLayout = keyboardLayout;
    
    [self loadKeyboardLayout:self.textDocumentProxy.keyboardType];
    
    //[self.inputView addSubview:view];
   
   
    
    
//      NEXTKEYBOARDBUTTON INITIALIZATION
    
//    self.nextKeyboardButton = [UIButton buttonWithType:UIButtonTypeSystem];
//
//    [self.nextKeyboardButton setTitle:NSLocalizedString(@"Next Keyboard", @"Title for 'Next Keyboard' button") forState:UIControlStateNormal];
//    [self.nextKeyboardButton sizeToFit];
//    self.nextKeyboardButton.translatesAutoresizingMaskIntoConstraints = NO;
//
//    [self.nextKeyboardButton addTarget:self action:@selector(handleInputModeListFromView:withEvent:) forControlEvents:UIControlEventAllTouchEvents];
//
//    [self.view addSubview:self.nextKeyboardButton];
//
//    [self.nextKeyboardButton.leftAnchor constraintEqualToAnchor:self.view.leftAnchor].active = YES;
//    [self.nextKeyboardButton.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = YES;
    
    self.inputView.backgroundColor = [UIColor lightGrayColor];
    NSLog(@"kuku");
    
    
    CGFloat expandedHeight = 251;
    NSLayoutConstraint *heightConstraint =
    [NSLayoutConstraint constraintWithItem: self.inputView
                                 attribute: NSLayoutAttributeHeight
                                 relatedBy: NSLayoutRelationEqual
                                    toItem: nil
                                 attribute: NSLayoutAttributeNotAnAttribute
                                multiplier: 0.0
                                  constant: expandedHeight];
    [self.inputView addConstraint: heightConstraint];
    
}

-(void) loadKeyboardLayout:(UIKeyboardType) keyboardType
{
    switch (keyboardType)
    {
        case UIKeyboardTypeDefault:
        {
            ZULetterKeysView* keysView = [[ZULetterKeysView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
            [self.currentKeboardLayout addSubview:keysView];
            keysView.delegate = self;
            keysView.translatesAutoresizingMaskIntoConstraints = NO;
            NSLayoutConstraint* top = [keysView.topAnchor constraintEqualToAnchor:self.currentKeboardLayout.topAnchor];
            NSLayoutConstraint* left = [keysView.leftAnchor constraintEqualToAnchor:self.currentKeboardLayout.leftAnchor];
            NSLayoutConstraint* right = [keysView.rightAnchor constraintEqualToAnchor:self.currentKeboardLayout.rightAnchor];
            NSLayoutConstraint* height = [keysView.heightAnchor constraintEqualToConstant:keysView.viewHeight];
            [self.currentKeboardLayout addConstraints:@[top, left, right, height]];
        }
            
            
            break;
            
        default:
            break;
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated
}

- (void)textWillChange:(id<UITextInput>)textInput {
    // The app is about to change the document's contents. Perform any preparation here.
}

- (void)textDidChange:(id<UITextInput>)textInput {
    // The app has just changed the document's contents, the document context has been updated.
    
    UIColor *textColor = nil;
    if (self.textDocumentProxy.keyboardAppearance == UIKeyboardAppearanceDark) {
        textColor = [UIColor whiteColor];
    } else {
        textColor = [UIColor blackColor];
    }
    [self.nextKeyboardButton setTitleColor:textColor forState:UIControlStateNormal];
}
#pragma mark - ZUKeyboardButtonDelegate

-(void) buttonPressed:(NSString*) button
{
    if ([button isEqualToString:@"space"])
    {
        NSLog(@"SPACE BUTTON");
    }
    else if ([button isEqualToString:@"backSpace"])
    {
        NSLog(@"backSpace BUTTON");
    }
    else if (button.length == 1)
    {
        [self.textDocumentProxy insertText:button];
    }
}


@end
