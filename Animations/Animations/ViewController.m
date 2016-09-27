//
//  ViewController.m
//  Animations
//
//  Created by Chad Wiedemann on 9/26/16.
//  Copyright © 2016 Chad Wiedemann. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.VC = (GameOverVC*)[sb instantiateViewControllerWithIdentifier:@"GameOverVC"];

}

-(void)viewWillAppear:(BOOL)animated
{
    self.barrier = [[UIView alloc] initWithFrame:CGRectMake(250, 700, 130, 15)];
    self.barrier.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.barrier];
    self.paddleCenterPoint = self.barrier.center;
    self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    
    
    self.circleView = [[UIView alloc] initWithFrame:CGRectMake(0,0,20,20)];
    self.circleView.alpha = 0.5;
    self.circleView.layer.cornerRadius = 10;
    self.circleView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.circleView];

}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    
    
    
    UIDynamicItemBehavior *gameOverView = [[UIDynamicItemBehavior alloc]initWithItems:@[self.gameOverView]];
    gameOverView.anchored = YES;
    [self.animator addBehavior:gameOverView];
    
    UIDynamicItemBehavior *circleBehavior = [[UIDynamicItemBehavior alloc]initWithItems:@[self.circleView]];
    circleBehavior.elasticity = 1;
    circleBehavior.friction = 0;
    circleBehavior.allowsRotation = NO;
    circleBehavior.resistance = 0;
    UIDynamicItemBehavior *barrierBehavior = [[UIDynamicItemBehavior alloc]initWithItems:@[self.barrier]];
    barrierBehavior.density = 1000;
    barrierBehavior.friction = 0;
    barrierBehavior.allowsRotation = NO;
    [self.animator addBehavior:barrierBehavior];
    [self.animator addBehavior:circleBehavior];
    
    UICollisionBehavior *collisionBehavior = [[UICollisionBehavior alloc] initWithItems:@[self.circleView,self.barrier, self.gameOverView]];
    collisionBehavior.translatesReferenceBoundsIntoBoundary = YES;
    collisionBehavior.collisionDelegate = self;
    collisionBehavior.collisionMode = UICollisionBehaviorModeEverything;
    [self.animator addBehavior:collisionBehavior];
    
    [self startGame];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint touchLocation = [touch locationInView:self.view];
    
    CGFloat yPoint = self.paddleCenterPoint.y;
    CGPoint paddleCenter = CGPointMake(touchLocation.x, yPoint);
    
    self.barrier.center = paddleCenter;
    [self.animator updateItemUsingCurrentState:self.barrier];
}

- (void)collisionBehavior:(UICollisionBehavior *)behavior endedContactForItem:(id <UIDynamicItem>)item1 withItem:(id <UIDynamicItem>)item2
{
    if(item1==self.gameOverView && item2==self.circleView){
       
        NSLog(@"game over");
        [self.circleView removeFromSuperview];
        [self.barrier removeFromSuperview];
        [self.animator removeAllBehaviors];
        
        [self presentViewController:self.VC animated:YES completion:nil];
    }
    
}

-(void)startGame
{
    sleep(5);
    self.push = [[UIPushBehavior alloc] initWithItems:@[self.circleView]
                                                 mode:UIPushBehaviorModeInstantaneous];
    self.push.pushDirection = CGVectorMake(0.5, 1.0);
    self.push.active = YES;
    self.push.magnitude = .25;
    [self.animator addBehavior:self.push];
}


@end
