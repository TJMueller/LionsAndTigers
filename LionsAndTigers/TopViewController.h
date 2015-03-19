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

-(void)topButtonTapped:(id)sender; //sandwich button

@end

@interface TopViewController : UIViewController

@property (nonatomic, assign) id <TopDelegate> delegate;

@end
