//
//  ZUAlphabet.h
//  ZUKeyboard03
//
//  Created by Xapek Lernov on 9/28/17.
//  Copyright © 2017 Xapek86. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZULetterRow.h"

@interface ZUAlphabet : NSObject



@property (strong, nonatomic) NSArray<ZULetterRow*>* letterRows;
@property (assign, nonatomic) NSInteger maxRow;

-(instancetype)initWithLetterRow:(NSArray<ZULetterRow*>*) letterRow;
+(ZUAlphabet*) qwertyAlpha;

@end
