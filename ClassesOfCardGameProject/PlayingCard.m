//
//  PlayingCard.m
//  ClassesOfCardGameProject
//
//  Created by Marcos Kilmer on 02/06/20.
//  Copyright © 2020 mkilmer. All rights reserved.
//♡♡

#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *)contents{
    NSArray *rankStrings = [PlayingCard validRanks];
    
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
   
    // equal to :  return [NSString stringWithFormat:@"%d%@", self.rank, self.suit]
}
@synthesize suit = _suit; // because we provide setter AND getter

// class method
+(NSArray*) validSuits{
    return @[@"♤",@"♧",@"♡",@"♢"];
}

+(NSArray*) validRanks{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}
+ (NSUInteger)maxRank{
    return [[self validRanks] count] -1;
}

- (void)setSuit:(NSString *)suit{
    
    if([[PlayingCard validSuits] containsObject:suit]){
        _suit = suit;
    }
    
}

- (void)setRank:(NSUInteger)rank{
    if(rank <= [PlayingCard maxRank]){
        _rank = rank;
    }
}

- (NSString *)suit{
    return _suit ? _suit : @"?";
    
    /*
     equal to :
     if(suit != nil){☈☈☁︎
        return _suit;
     }else{
        return @"?";
     */
}
@end
