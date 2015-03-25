//
//  AGTWikiViewController.m
//  StarWars
//
//  Created by Fernando Rodríguez Romero on 25/03/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import "AGTWikiViewController.h"



@implementation AGTWikiViewController

-(id) initWithModel:(AGTStarWarsCharacter *) model{
    
    if (self = [super initWithNibName:nil
                               bundle:nil]) {
        _model = model;
    }
    
    return self;
    
}

-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    
    // Asignar delegados
    self.browser.delegate = self;
    
    // sincronizar modelo -> vista
    [self.activityView setHidden:NO];
    [self.activityView startAnimating];
    
    [self.browser loadRequest:
     [NSURLRequest requestWithURL:self.model.wikiURL]];
    
    
}

#pragma mark - UIWebViewDelegate
-(void) webViewDidFinishLoad:(UIWebView *)webView{
    
    // Para y oculto el activity
    [self.activityView stopAnimating];
    [self.activityView setHidden:YES];

}

-(BOOL) webView:(UIWebView *)webView
shouldStartLoadWithRequest:(NSURLRequest *)request
 navigationType:(UIWebViewNavigationType)navigationType{
    
    if ((navigationType == UIWebViewNavigationTypeLinkClicked) ||
        (navigationType == UIWebViewNavigationTypeFormSubmitted)){
        return  NO;
    }else{
        return YES;
    }
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
