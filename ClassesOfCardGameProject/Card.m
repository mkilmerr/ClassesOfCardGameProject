//
//  Card.m
//  ClassesOfCardGameProject
//
//  Created by Marcos Kilmer on 02/06/20.
//  Copyright © 2020 mkilmer. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int)match:(NSArray *)otherCards{
    int score = 0 ;
    
    for(Card *card in otherCards){
        if([card.contents isEqualToString:self.contents]){
            score = 1 ;
        }
    }
    
    return score;
}
@end
