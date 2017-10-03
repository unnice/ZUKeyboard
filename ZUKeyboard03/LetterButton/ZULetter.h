//
//  ZULetter.h
//  ZUKeyboard03
//
//  Created by Xapek Lernov on 9/28/17.
//  Copyright © 2017 Xapek86. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface ZULetter : NSObject
@property (strong, nonatomic) NSArray<NSString*>* symbolsArray;
@property (strong, nonatomic) NSArray<NSString*>* capitalizedSymbolsArray;

- (instancetype)initWithArray: (NSArray<NSString*>*) array;




@end
