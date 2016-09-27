//
//  ViewController.h
//  Animations
//
//  Created by Chad Wiedemann on 9/26/16.
//  Copyright © 2016 Chad Wiedemann. All rights reserved.
#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>
#import "GameOverViewController.h"
#import "GameOverVC.h"

@interface ViewController : UIViewController <UICollisionBehaviorDelegate>

@property (nonatomic, strong) GameOverVC* VC;
@property (nonatomic, strong) UIDynamicAnimator *animator;
@property (nonatomic, strong) UIView* barrier;
@property (nonatomic, strong) UIView* circleView;
@property (nonatomic) CGPoint paddleCenterPoint;
@property (nonatomic, strong) UIGravityBehavior *gravityBeahvior;
@property (nonatomic, strong) UIPushBehavior *push;
@property (weak, nonatomic) IBOutlet UIView *gameOverView;
@end

