//
//  AGTStarWarsCharacter.h
//  StarWars
//
//  Created by Fernando Rodríguez Romero on 24/03/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

@import Foundation;
@import UIKit;

@interface AGTStarWarsCharacter : NSObject


@property (strong,nonatomic) NSString *name;
@property (strong, nonatomic) NSString *alias;
@property (strong, nonatomic) NSURL *wikiURL;
@property (strong, nonatomic) NSData *soundData;
@property (strong, nonatomic) UIImage *photo;

// designated
-(id) initWithName:(NSString *) name
             alias:(NSString *) alias
               url:(NSURL *) wikiURL
         soundData:(NSData*) soundData
             photo:(UIImage *) photo;

-(id) initWithAlias:(NSString *) alias
                url:(NSURL *) wikiURL
          soundData:(NSData*) soundData
              photo:(UIImage *) photo;


@end







