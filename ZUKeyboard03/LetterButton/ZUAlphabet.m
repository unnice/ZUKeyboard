//
//  ZUAlphabet.m
//  ZUKeyboard03
//
//  Created by Xapek Lernov on 9/28/17.
//  Copyright © 2017 Xapek86. All rights reserved.
//

#import "ZUAlphabet.h"

@implementation ZUAlphabet

- (instancetype)initWithLetterRow:(NSArray<ZULetterRow*>*) letterRow
{
    self = [super init];
    if (self) {
        self.letterRows = letterRow;
        NSInteger maxRow = 0;
        for (ZULetterRow* row in letterRow)
        {
            maxRow = MAX(maxRow, [row.letters count]);
        }
        self.maxRow = maxRow;
    }
    return self;
}

+(ZUAlphabet*) qwertyAlpha
{
    static ZUAlphabet* qwerty = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^
    {

        ZULetter* q = [[ZULetter alloc] initWithArray:@[@"q"]] ;
        ZULetter* w = [[ZULetter alloc] initWithArray:@[@"w"]] ;
        ZULetter* e = [[ZULetter alloc] initWithArray:@[@"e"]] ;
        ZULetter* r = [[ZULetter alloc] initWithArray:@[@"r"]] ;
        ZULetter* t = [[ZULetter alloc] initWithArray:@[@"t"]] ;
        ZULetter* y = [[ZULetter alloc] initWithArray:@[@"y"]] ;
        ZULetter* u = [[ZULetter alloc] initWithArray:@[@"u"]] ;
        ZULetter* i = [[ZULetter alloc] initWithArray:@[@"i"]] ;
        ZULetter* o = [[ZULetter alloc] initWithArray:@[@"o"]] ;
        ZULetter* p = [[ZULetter alloc] initWithArray:@[@"p"]] ;
        ZULetterRow* qwerty1 = [[ZULetterRow alloc] initWithRow:@[q,w,e,r,t,y,u,i,o,p]];

        ZULetter* a = [[ZULetter alloc] initWithArray:@[@"a"]] ;
        ZULetter* s = [[ZULetter alloc] initWithArray:@[@"s"]] ;
        ZULetter* d = [[ZULetter alloc] initWithArray:@[@"d"]] ;
        ZULetter* f = [[ZULetter alloc] initWithArray:@[@"f"]] ;
        ZULetter* g = [[ZULetter alloc] initWithArray:@[@"g"]] ;
        ZULetter* h = [[ZULetter alloc] initWithArray:@[@"h"]] ;
        ZULetter* j = [[ZULetter alloc] initWithArray:@[@"j"]] ;
        ZULetter* k = [[ZULetter alloc] initWithArray:@[@"k"]] ;
        ZULetter* l = [[ZULetter alloc] initWithArray:@[@"l"]] ;

        ZULetterRow* qwerty2 = [[ZULetterRow alloc] initWithRow:@[a,s,d,f,g,h,j,k,l]];

        ZULetter* z = [[ZULetter alloc] initWithArray:@[@"z"]] ;
        ZULetter* x = [[ZULetter alloc] initWithArray:@[@"x"]] ;
        ZULetter* c = [[ZULetter alloc] initWithArray:@[@"c"]] ;
        ZULetter* v = [[ZULetter alloc] initWithArray:@[@"v"]] ;
        ZULetter* b = [[ZULetter alloc] initWithArray:@[@"b"]] ;
        ZULetter* n = [[ZULetter alloc] initWithArray:@[@"n"]] ;
        ZULetter* m = [[ZULetter alloc] initWithArray:@[@"m"]] ;


        ZULetterRow* qwerty3 = [[ZULetterRow alloc] initWithRow:@[z,x,c,v,b,n,m]];

        qwerty = [[ZUAlphabet alloc] initWithLetterRow:@[qwerty1, qwerty2, qwerty3]];
    });
    return qwerty;
}

@end


