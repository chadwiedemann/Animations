//
//  GameOverObject.m
//  Animations
//
//  Created by Chad Wiedemann on 9/26/16.
//  Copyright © 2016 Chad Wiedemann. All rights reserved.
//

#import "GameOverObject.h"

@implementation GameOverObject

- (void)collisionBehavior:(UICollisionBehavior *)behavior endedContactForItem:(id <UIDynamicItem>)item1 withItem:(id <UIDynamicItem>)item2
{

    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    
    UIViewController *vc2 = [storyboard instantiateViewControllerWithIdentifier:@"GameOver"];
    [vc presentViewController:vc2 animated:YES completion:nil];


}



@end
