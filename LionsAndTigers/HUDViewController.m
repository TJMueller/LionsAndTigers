//
//  HUDViewController.m
//  LionsAndTigers
//
//  Created by Timothy Mueller on 3/18/15.
//  Copyright (c) 2015 Timothy Mueller. All rights reserved.
//

#import "HUDViewController.h"

@interface HUDViewController ()

@end

@implementation HUDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onLionsButtonTapped:(id)sender {
    [self.delegate lionButtonTapped:sender];
}

- (IBAction)onTigersButtonTapped:(id)sender {
    [self.delegate tigerButtonTapped:sender];

}

@end
