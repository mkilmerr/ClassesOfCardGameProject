//
//  Card.h
//  ClassesOfCardGameProject
//
//  Created by Marcos Kilmer on 02/06/20.
//  Copyright © 2020 mkilmer. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Card : NSObject
@property (strong, nonatomic) NSString* contents;

@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

-(int)match:(NSArray*) otherCards;

@end

NS_ASSUME_NONNULL_END
