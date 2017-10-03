//
//  ZULetterRow.m
//  ZUKeyboard03
//
//  Created by Xapek Lernov on 9/28/17.
//  Copyright © 2017 Xapek86. All rights reserved.
//

#import "ZULetterRow.h"

@implementation ZULetterRow

- (instancetype)initWithRow:(NSArray<ZULetter*>*) row
{
    self = [super init];
    if (self)
    {
        
        self.letters = row;
    }
    return self;
}

@end
