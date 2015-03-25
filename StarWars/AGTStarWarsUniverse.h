//
//  AGTStarWarsUniverse.h
//  StarWars
//
//  Created by Fernando Rodríguez Romero on 26/03/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AGTStarWarsCharacter.h"

@interface AGTStarWarsUniverse : NSObject


@property (nonatomic, readonly) NSUInteger rebelCount;
@property (nonatomic, readonly) NSUInteger imperialCount;


-(AGTStarWarsCharacter *) rebelAtIndex:(NSUInteger) index;
-(AGTStarWarsCharacter *) imperialAtIndex:(NSUInteger) index;


@end
