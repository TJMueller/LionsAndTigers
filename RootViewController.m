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
//@property UINavigationController *tvc;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%lu",(unsigned long)self.childViewControllers.count);

    NSLog(@"class == %@", [self.childViewControllers[0] class]);
    NSLog(@"class == %@", [self.childViewControllers[1] class]);
    UINavigationController* firstChild = self.childViewControllers[1];
    NSLog(@"class == %@", [firstChild.childViewControllers[0] class]);

    self.tvc = firstChild.childViewControllers[0];
    //self.tvc.delegate = self;
    //self.hvc.delegate = self;
    self.tvc.delegate = self;
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
    self.firstLeftConstraint.constant = 100;
    self.shouldShowHUDView =!self.shouldShowHUDView;

}

@end
