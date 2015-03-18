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
@property BOOL shouldShowHUDView;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//had to tell TopViewController where RootViewController was
//so we had to first look at the childview of RootViewController which is a UINavigationController

    //we had to make a UINavigationController variable called firstChild to hold it
    UINavigationController* firstChild = self.childViewControllers[1];
    //then we had to take the child of the first child which was the TopViewController
    self.tvc = firstChild.childViewControllers[0];
    //so here we set the delegate of the TopViewController to RootViewController
    self.tvc.delegate = self;

    self.hvc = self.childViewControllers[0];
    self.hvc.delegate = self;
    self.shouldIShowLions = false;


//    NSLog(@"%lu",(unsigned long)self.childViewControllers.count);
//    NSLog(@"class == %@", [self.childViewControllers[0] class]);
//    NSLog(@"class == %@", [self.childViewControllers[1] class]);
//    NSLog(@"class == %@", [firstChild.childViewControllers[0] class]);
}



-(void)topButtonTapped:(id)sender {
    if (self.shouldShowHUDView == false) {
        [self showHudView];
        NSLog(@"BOIIIIII");
    }else{
        [self.view layoutIfNeeded];
        self.firstLeftConstraint.constant = -16;
        self.shouldShowHUDView =!self.shouldShowHUDView;
    }
}

-(void)showHudView {
    [self.view layoutIfNeeded];
    self.firstLeftConstraint.constant = 70;
    self.shouldShowHUDView =!self.shouldShowHUDView;

}

-(void)lionButtonTapped:(id)sender
{
    self.shouldIShowLions = true;
}

-(void)tigerButtonTapped:(id)sender
{
    self.shouldIShowLions = false;
}



@end
