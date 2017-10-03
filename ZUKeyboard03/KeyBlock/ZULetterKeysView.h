//
//  ZULetterKeysView.h
//  ZUKeyboardTest
//
//  Created by Xapek Lernov on 9/27/17.
//  Copyright © 2017 Xapek86. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZULetterButtonView.h"
#import "ZUAlphabet.h"


@interface ZULetterKeysView : UIView <ZUKeyboardButtonDelegate>
//@property (strong, nonatomic) ZULetterButtonView* button;
@property (strong, nonatomic) NSArray<ZULetterButtonView*>* letterButtons;
@property (assign, nonatomic) CGFloat viewHeight;
@property (weak, nonatomic) id <ZUKeyboardButtonDelegate> delegate;





@end
