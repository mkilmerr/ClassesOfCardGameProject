//
//  PlayingCard.h
//  ClassesOfCardGameProject
//
//  Created by Marcos Kilmer on 02/06/20.
//  Copyright © 2020 mkilmer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
NS_ASSUME_NONNULL_BEGIN

@interface PlayingCard : Card

@property (strong,nonatomic) NSString* suit;
@property (nonatomic) NSUInteger rank;

+(NSArray*)validSuits;
+(NSUInteger) maxRank;
@end

NS_ASSUME_NONNULL_END
