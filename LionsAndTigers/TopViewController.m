//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by Timothy Mueller on 3/18/15.
//  Copyright (c) 2015 Timothy Mueller. All rights reserved.
//

#import "TopViewController.h"
#import "CustomCollectionViewCell.h"
#import "RootViewController.h"
#import "HUDViewController.h"

@interface TopViewController () <UICollectionViewDelegate, UICollectionViewDataSource, HUDDelegate>

@property (strong, nonatomic) IBOutlet UICollectionView *collectionViewOutlet;
@property NSArray *lions;
@property NSArray *tigers;
@property BOOL shouldIWork;
@end

@implementation TopViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //creating our arrays here:
    self.lions = [NSArray arrayWithObjects:[UIImage imageNamed:@"lion0"], [UIImage imageNamed:@"lion1"], [UIImage imageNamed:@"lion2"], nil];
      self.tigers = [NSArray arrayWithObjects:[UIImage imageNamed:@"tiger"], [UIImage imageNamed:@"tiger1"], [UIImage imageNamed:@"tiger2"], nil];
    [self.collectionViewOutlet reloadData];

    //this is our complicated way of accessing a view controller many viewcontrollers away
    UIViewController *temp = self.parentViewController;
    UIViewController *temp2 = temp.parentViewController;
    HUDViewController *temp3 = temp2.childViewControllers[0];
//    NSLog(@"%@ into %@ back into %@" , [temp class],[temp2 class], [temp3 class]);
    //delegating the result of our pathway:
    temp3.delegate = self;

}

-(void)lionButtonTapped:(id)sender {
    self.shouldIWork = true; // should i work is our boolean for which images to use
    [self.collectionViewOutlet reloadData];
}

-(void)tigerButtonTapped:(id)sender{
    self.shouldIWork = false; // should i work is our boolean for which images to use
    [self.collectionViewOutlet reloadData];

}

//this is our sandwich view button that connects to the root
- (IBAction)topViewButtonTapped:(id)sender {
    [self.delegate topButtonTapped:sender];
}


- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section {
    return 3;
    //says how many cells to show
}

- (CustomCollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CustomCollectionViewCell *cell = [cv dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    //this is where we say what's in our cell

    if(self.shouldIWork)
    {   //if bool, then lions
        cell.cellImageViewOutlet.image = [self.lions objectAtIndex:indexPath.row];
        return cell;
    }
    else
    {
        cell.cellImageViewOutlet.image = [self.tigers objectAtIndex:indexPath.row];
        return cell;
    }
}

@end
