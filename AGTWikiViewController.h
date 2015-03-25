//
//  AGTWikiViewController.h
//  StarWars
//
//  Created by Fernando Rodríguez Romero on 25/03/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AGTStarWarsCharacter.h"

@interface AGTWikiViewController : UIViewController<UIWebViewDelegate>

@property (nonatomic, weak) IBOutlet UIWebView *browser;
@property (nonatomic, weak) IBOutlet UIActivityIndicatorView *activityView;

@property (nonatomic, strong) AGTStarWarsCharacter *model;

-(id) initWithModel:(AGTStarWarsCharacter *) model;


@end
