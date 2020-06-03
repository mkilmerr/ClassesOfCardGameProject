//
//  Deck.h
//  ClassesOfCardGameProject
//
//  Created by Marcos Kilmer on 02/06/20.
//  Copyright © 2020 mkilmer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
NS_ASSUME_NONNULL_BEGIN

@interface Deck : NSObject

-(void)addCard:(Card*)card atTop:(BOOL)atTop;
-(void)addCard:(Card*)card;

-(Card*)drawRandomCard;

@end

NS_ASSUME_NONNULL_END
