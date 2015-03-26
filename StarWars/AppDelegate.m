//
//  AppDelegate.m
//  StarWars
//
//  Created by Fernando Rodríguez Romero on 24/03/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import "AppDelegate.h"

#import "AGTStarWarsCharacter.h"
#import "AGTCharacterViewController.h"
#import "AGTWikiViewController.h"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    
    // Creamos una vista de tipo UIWindow
    [self setWindow:[[UIWindow alloc]
                     initWithFrame:[[UIScreen mainScreen] bounds]]];
    
    [[self window] setBackgroundColor:[UIColor orangeColor]];
    self.window.backgroundColor = [UIColor orangeColor];
    
    
    
    
    
    
    
    // Creo el combinador
    UITabBarController *tabVC = [[UITabBarController alloc] init];
    tabVC.viewControllers = [self arrayOfControllers];
    
    self.window.rootViewController = tabVC;
    
    
    // La mostramos
    [[self window] makeKeyAndVisible];
    
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


#pragma mark - Utils
-(NSArray *) arrayOfModels{
    
    // Vader
    NSURL *vaderURL = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/Darth_Vader"];
    
    NSBundle *b = [NSBundle mainBundle];
    NSData *vaderSound = [NSData dataWithContentsOfURL:[b URLForResource:@"vader" withExtension:@"caf"]];
    UIImage *vaderImage = [UIImage imageNamed:@"darthVader.jpg"];
    UIImage *vaderIcon = [[UIImage imageNamed:@"vader-icon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    AGTStarWarsCharacter *vader = [[AGTStarWarsCharacter alloc]
                                   initWithName:@"Anakin Skywalker"
                                   alias:@"Darth Vader"
                                   url:vaderURL
                                   soundData:vaderSound
                                   photo:vaderImage
                                   icon:vaderIcon];
    // Tarkin
    NSURL *tarkinURL = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/Grand_Moff_Tarkin"];
    
    NSData *tarkinSound = [NSData dataWithContentsOfURL:[b URLForResource:@"tarkin" withExtension:@"caf"]];
    UIImage *tarkinImage = [UIImage imageNamed:@"tarkin.jpg"];
    UIImage *tarkinIcon = [[UIImage imageNamed:@"tarkin-icon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    AGTStarWarsCharacter *tarkin = [[AGTStarWarsCharacter alloc]
                                    initWithName:@"Wilhuf Tarkin"
                                    alias:@"Grand Moff Tarkin"
                                    url:tarkinURL
                                    soundData:tarkinSound
                                    photo:tarkinImage
                                    icon:tarkinIcon];
    
    // Palpatine
    NSURL *palpatineURL = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/Palpatine"];
    
    NSData *palpatineSound = [NSData dataWithContentsOfURL:[b URLForResource:@"palpatine" withExtension:@"caf"]];
    UIImage *palpatineImage = [UIImage imageNamed:@"palpatine.jpg"];
    UIImage *palpatineIcon = [[UIImage imageNamed:@"darth-sidious-icon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    AGTStarWarsCharacter *palpatine = [[AGTStarWarsCharacter alloc]
                                       initWithName: @"Palpatine"
                                       alias:@"Darth Sidious"
                                       url:palpatineURL
                                       soundData:palpatineSound
                                       photo:palpatineImage
                                       icon:palpatineIcon];
    
    
    // Chewbacca
    NSURL *chewieURL = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/Chewbacca"];
    
    NSData *chewieSound = [NSData dataWithContentsOfURL:[b URLForResource:@"chewbacca" withExtension:@"caf"]];
    UIImage *chewieImage = [UIImage imageNamed:@"chewbacca.jpg"];
    UIImage *chewieIcon = [[UIImage imageNamed:@"chewbacca-icon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    AGTStarWarsCharacter *chewie = [[AGTStarWarsCharacter alloc]
                                    initWithAlias:@"Chewbacca"
                                    url:chewieURL
                                    soundData:chewieSound
                                    photo:chewieImage
                                    icon:chewieIcon];
    
    // C-3PO
    NSURL *c3poURL = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/C-3PO"];
    
    NSData *c3poSound = [NSData dataWithContentsOfURL:[b URLForResource:@"c3po" withExtension:@"caf"]];
    UIImage *c3poImage = [UIImage imageNamed:@"c3po.jpg"];
    UIImage *c3poIcon = [[UIImage imageNamed:@"C3PO-icon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    AGTStarWarsCharacter *c3po = [[AGTStarWarsCharacter alloc]
                                  initWithAlias:@"C-3PO"
                                  url:c3poURL
                                  soundData:c3poSound
                                  photo:c3poImage
                                  icon:c3poIcon];
    
    // Yoda
    NSURL *yodaURL = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/Yoda"];
    
    
    NSData *yodaSound = [NSData dataWithContentsOfURL:[b URLForResource:@"yoda" withExtension:@"caf"]];
    UIImage *yodaImage = [UIImage imageNamed:@"yoda.jpg"];
    UIImage *yodaIcon = [[UIImage imageNamed:@"yoda-icon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    AGTStarWarsCharacter *yoda = [[AGTStarWarsCharacter alloc]
                                  initWithName:@"Minch Yoda"
                                  alias:@"Master Yoda"
                                  url:yodaURL
                                  soundData:yodaSound
                                  photo:yodaImage
                                  icon:yodaIcon];
    
    // R2-D2
    NSURL *r2d2URL = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/R2-D2"];
    
    NSData *r2d2Sound = [NSData dataWithContentsOfURL:[b URLForResource:@"r2-d2" withExtension:@"caf"]];
    UIImage *r2d2Image = [UIImage imageNamed:@"R2-D2.jpg"];
    UIImage *r2d2Icon = [[UIImage imageNamed:@"R2D2-icon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    AGTStarWarsCharacter *r2d2 = [[AGTStarWarsCharacter alloc]
                                  initWithAlias:@"R2-D2"
                                  url:r2d2URL
                                  soundData:r2d2Sound
                                  photo:r2d2Image
                                  icon:r2d2Icon];
    
    return @[vader, chewie, c3po, r2d2, yoda, palpatine, tarkin];
    
}

-(NSArray *) arrayOfControllers{
    
    NSArray *models = [self arrayOfModels];
    NSMutableArray *controllers = [NSMutableArray
                                   arrayWithCapacity:models.count];
    
    // recorremos los modelos
    for (AGTStarWarsCharacter *each in models) {
        
        // Creo un controlador
        AGTCharacterViewController *charVC = [[AGTCharacterViewController alloc]
                                              initWithModel:each];
        // Lo meto en un navigation
        UINavigationController *nav = [[UINavigationController alloc]
                                       initWithRootViewController:charVC];
        
        // lo añado al array de controladores
        [controllers addObject:nav];
    }
    
    return controllers;
}
















@end
