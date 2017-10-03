//
//  ZULetterRow.h
//  ZUKeyboard03
//
//  Created by Xapek Lernov on 9/28/17.
//  Copyright © 2017 Xapek86. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZULetter.h"

@interface ZULetterRow : NSObject

@property (strong, nonatomic) NSArray<ZULetter*>* letters;

- (instancetype)initWithRow:(NSArray<ZULetter*>*) row;

@end
