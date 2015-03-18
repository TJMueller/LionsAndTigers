//
//  HUDViewController.h
//  LionsAndTigers
//
//  Created by Timothy Mueller on 3/18/15.
//  Copyright (c) 2015 Timothy Mueller. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HUDDelegate <NSObject>

@optional
-(void)tigersButtonTapped:(id)identifier didTapButton:(UIButton *)button;
-(void)lionsButtonTapped:(id)identifier didTapButton:(UIButton *)button;


@end

@interface HUDViewController : UIViewController

@property (nonatomic, assign) id <HUDDelegate> delegate;

@end
