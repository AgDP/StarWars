//
//  AGTCharacterViewController.m
//  StarWars
//
//  Created by Fernando Rodríguez Romero on 24/03/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import "AGTCharacterViewController.h"
#import "AGTWikiViewController.h"

@implementation AGTCharacterViewController

#pragma mark - Init
-(id) initWithModel:(AGTStarWarsCharacter *) model{
    
    if (self = [super initWithNibName:nil
                               bundle:nil]) {
        _model = model;
        self.title = [model alias];
    }
    
    return self;
}

#pragma mark - View Lifecycle

-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    // Asegurarse de que no se ocupa toda la pantalla
    // cuando estás en un combinador
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    
    // Sincronizar modelo -> vista
    self.photoView.image = self.model.photo;
    
    
}

#pragma mark - Memory
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions
-(IBAction)playSound:(id)sender{
    
    // Sacamos el sonido del modelo
    // Lo reproducimos
    self.player = [CafPlayer cafPlayer];
    [self.player playSoundData:self.model.soundData];
    
    
}


-(IBAction)displayWiki:(id)sender{
    
    // Crear un WikiVC
    AGTWikiViewController *wVC = [[AGTWikiViewController alloc]
                                  initWithModel:self.model];
    // Hacer un push
    [self.navigationController pushViewController:wVC
                                         animated:YES];
    
}






@end
