//
//  TopViewController.h
//  LionsAndTigers
//
//  Created by Timothy Mueller on 3/18/15.
//  Copyright (c) 2015 Timothy Mueller. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TopDelegate <NSObject>

@optional

-(IBAction)topButtonTapped:(id)sender;

@end

@interface TopViewController : UIViewController

@property (nonatomic, assign) id <TopDelegate> delegate;
@property BOOL movecontroller;

@end
