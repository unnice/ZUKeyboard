//
//  ZULetterButtonView.h
//  ZUKeyboardTest
//
//  Created by Xapek Lernov on 9/27/17.
//  Copyright © 2017 Xapek86. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZUAlphabet.h"

@protocol ZUKeyboardButtonDelegate <NSObject>

-(void) buttonPressed:(NSString*) button;

@end

@interface ZULetterButtonView : UIView
@property (strong, nonatomic) IBOutlet UIView *view;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UIView *frontView;
@property (weak, nonatomic) IBOutlet UILabel *buttonTitle;
@property (strong, nonatomic) ZULetter* letter;
@property (weak, nonatomic) id <ZUKeyboardButtonDelegate> delegate;

@end



