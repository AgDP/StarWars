//
//  AGTCharacterViewController.h
//  StarWars
//
//  Created by Fernando Rodríguez Romero on 24/03/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

@import UIKit;

#import "AGTStarWarsCharacter.h"

@interface AGTCharacterViewController : UIViewController

@property (nonatomic, strong) AGTStarWarsCharacter *model;
@property (nonatomic, weak) IBOutlet UIImageView *photoView;




-(id) initWithModel:(AGTStarWarsCharacter *) model;


@end
