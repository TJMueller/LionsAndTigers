//
//  RootViewController.m
//  LionsAndTigers
//
//  Created by Timothy Mueller on 3/18/15.
//  Copyright (c) 2015 Timothy Mueller. All rights reserved.
//

#import "RootViewController.h"
#import "TopViewController.h"
#import "HUDViewController.h"

@interface RootViewController () <TopDelegate, HUDDelegate>

@property (strong, nonatomic) IBOutlet UIView *topContainerView;
@property (strong, nonatomic) IBOutlet UIView *HUDContainerView;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *firstLeftConstraint;
@property TopViewController *tvc;
@property HUDViewController *hvc;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%lu",(unsigned long)self.view.subviews.count);

    self.tvc = self.view.subviews[0];
    //self.hvc = self.view.subviews[2];
    //self.tvc.delegate = self;
    //self.hvc.delegate = self;
//    self.tvc.delegate = self;
}



-(void)topButtonTapped:(id)sender {

    [self showHudView];
    NSLog(@"BOIIIIII");
    
}

-(void)showHudView {
    [self.view layoutIfNeeded];
    self.firstLeftConstraint.constant = 100;

}

@end
