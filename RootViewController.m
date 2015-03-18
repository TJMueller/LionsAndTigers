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
    self.tvc = [TopViewController new];
    self.hvc = [HUDViewController new];
    self.tvc.delegate = self;
    self.hvc.delegate = self;
}



-(void)topButtonTapped:(id)sender {
    [self showHudView];
    
}

-(void)showHudView {
    [self.view layoutIfNeeded];
    self.firstLeftConstraint.constant = 100;

}

@end
