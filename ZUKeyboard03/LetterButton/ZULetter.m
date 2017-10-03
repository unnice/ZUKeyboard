//
//  ZULetter.m
//  ZUKeyboard03
//
//  Created by Xapek Lernov on 9/28/17.
//  Copyright © 2017 Xapek86. All rights reserved.
//

#import "ZULetter.h"

@implementation ZULetter

- (instancetype)initWithArray: (NSArray<NSString*>*) array;
{
    self = [super init];
    if (self)
    {
        if (array)
        {
            self.symbolsArray = array;
            NSMutableArray* capArray = [NSMutableArray array];
            for (NSString* letter in array)
            {
                NSString* capLetter = [letter capitalizedString];
                [capArray addObject:capLetter];
                
            }
            self.capitalizedSymbolsArray = capArray;
        }
        
    }
    return self;
}

@end
