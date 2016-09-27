//
//  GameOverVC.m
//  Animations
//
//  Created by Chad Wiedemann on 9/27/16.
//  Copyright © 2016 Chad Wiedemann. All rights reserved.
//

#import "GameOverVC.h"

@interface GameOverVC ()

@end

@implementation GameOverVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)startNewGameButton:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

@end
