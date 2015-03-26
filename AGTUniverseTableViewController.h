//
//  AGTUniverseTableViewController.h
//  StarWars
//
//  Created by Agustín on 26/03/2015.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AGTStarWarsUniverse.h"

#define IMPERIAL_SECTION 0
#define REBEL_SECTION 1

@interface AGTUniverseTableViewController : UITableViewController

@property (strong, nonatomic) AGTStarWarsUniverse *model;

-(id) initWithModel: (AGTStarWarsUniverse *) model style: (UITableViewStyle) style;

@end
