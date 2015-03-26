//
//  AGTUniverseTableViewController.m
//  StarWars
//
//  Created by Agustín on 26/03/2015.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import "AGTUniverseTableViewController.h"
#import "AGTCharacterViewController.h"

@interface AGTUniverseTableViewController ()

@end

@implementation AGTUniverseTableViewController

-(id) initWithModel: (AGTStarWarsUniverse *) model style: (UITableViewStyle) style{
    
    if (self = [super initWithStyle:style]) {
        _model = model;
        self.title = @"StarWars Universe";
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    
    // Return the number of sections.
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    
    if (section == IMPERIAL_SECTION) {
        return self.model.imperialCount;
    }else{
        return self.model.rebelCount;
    }
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //Averiguar de que modelo (personaje) me está hablando
    AGTStarWarsCharacter *character = nil;

    if (indexPath.section == IMPERIAL_SECTION) {
        character = [self.model imperialAtIndex:indexPath.row];
    }else{
        character = [self.model rebelAtIndex:indexPath.row];
    }
    
    //Crear una celda
    static NSString *cellId = @"StarWarsCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (cell == nil) {
        //La tenemos que crear nosotros desde cero
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellId];
    }
    
    //Configurarla
    //Sincronizar modelo (pj) con la vista (celda)
    cell.imageView.image = character.icon;
    cell.textLabel.text = character.alias;
    cell.detailTextLabel.text = character.name;
    
    //Devolverla
    
    return cell;
}


-(NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    if (section == IMPERIAL_SECTION) {
        return @"Imperials";
    }else{
        return @"Rebels";
    }
}

#pragma mark - Delegate

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //Averiguar de que modelo (pj) me están hablando
    // Deberes: -(AGTStarWarsCharacter *) characterAtIndexPath: (NSIndexPath *)
    AGTStarWarsCharacter *character;
    
    if (indexPath.section == IMPERIAL_SECTION) {
        character = [self.model imperialAtIndex:indexPath.row];
    }else{
        character = [self.model rebelAtIndex:indexPath.row];
    }
    
    
    //Avisar al delegado siempre y cuando entienda el mensaje
    if ([self.delegate respondsToSelector:@selector(universeTableViewController:didSelectCharacter:)])  {
        
        //te lo mando
        [self.delegate universeTableViewController:self didSelectCharacter:character];
    }
    
    
    
}




@end
