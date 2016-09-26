//
//  GameOverVC.m
//  Animations
//
//  Created by Chad Wiedemann on 9/26/16.
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


- (IBAction)playAgainButton:(id)sender {
    [self dismissViewControllerAnimated:NO completion:nil];
    
}
@end
