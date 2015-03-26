//
//  AGTWikiViewController.m
//  StarWars
//
//  Created by Fernando Rodríguez Romero on 25/03/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import "AGTWikiViewController.h"

@interface AGTWikiViewController ()

@property (nonatomic) BOOL canLoad;

@end

@implementation AGTWikiViewController

-(id) initWithModel:(AGTStarWarsCharacter *) model{
    
    if (self = [super initWithNibName:nil
                               bundle:nil]) {
        _model = model;
        self.title = @"Wikipedia";
        _canLoad = YES;
    }
    
    return self;
    
}

-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    // Asegurarse de que no se ocupa toda la pantalla
    // cuando estás en un combinador
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    
    
    // sincronizar modelo -> vista
    [self.activityView setHidden:NO];
    [self.activityView startAnimating];
    
    [self.browser loadRequest:
     [NSURLRequest requestWithURL:self.model.wikiURL]];
    
    
}

-(void) viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    // Asignar delegados
    self.browser.delegate = self;
    
}

#pragma mark - UIWebViewDelegate
-(void) webViewDidFinishLoad:(UIWebView *)webView{
    
    // Para y oculto el activity
    [self.activityView stopAnimating];
    [self.activityView setHidden:YES];
    
    self.canLoad = NO;

}

-(BOOL) webView:(UIWebView *)webView
shouldStartLoadWithRequest:(NSURLRequest *)request
 navigationType:(UIWebViewNavigationType)navigationType{
    
    return self.canLoad;

}

-(void) webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    
    // ocultar activityView
    // hacer un NSLog
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
