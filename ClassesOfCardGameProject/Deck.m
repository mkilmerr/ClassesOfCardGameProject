//
//  Deck.m
//  ClassesOfCardGameProject
//
//  Created by Marcos Kilmer on 02/06/20.
//  Copyright © 2020 mkilmer. All rights reserved.
//

#import "Deck.h"

@interface Deck()
// lazy instance
@property (strong, nonatomic) NSMutableArray *cards;

@end
@implementation Deck

-(NSMutableArray*) cards{
    if(! _cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}
- (void)addCard:(Card *)card atTop:(BOOL)atTop{
    
    if(atTop){
        [self.cards insertObject:card atIndex:0];
    }else{
        [self.cards addObject:card];
    }
    
}
- (void)addCard:(Card *)card{
    
    [self addCard:card atTop:NO];
    
}

- (Card *)drawRandomCard{
    Card *randomCard = nil;
    if([self.cards count]){
        
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    
    
    return randomCard;
}
@end
