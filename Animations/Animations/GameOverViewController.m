//
//  GameOverViewController.m
//  Animations
//
//  Created by Chad Wiedemann on 9/26/16.
//  Copyright © 2016 Chad Wiedemann. All rights reserved.
//

#import "GameOverViewController.h"

@interface GameOverViewController ()

@end

@implementation GameOverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)playAgainButton:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
