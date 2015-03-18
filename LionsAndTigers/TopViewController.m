//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by Timothy Mueller on 3/18/15.
//  Copyright (c) 2015 Timothy Mueller. All rights reserved.
//

#import "TopViewController.h"
#import "CustomCollectionViewCell.h"

@interface TopViewController () <UICollectionViewDelegate, UICollectionViewDataSource>

@property (strong, nonatomic) IBOutlet UICollectionView *collectionViewOutlet;
@property NSArray *lions;
@property NSArray *tigers;
@end

@implementation TopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.lions = [NSArray arrayWithObjects:[UIImage imageNamed:@"Image-5"], [UIImage imageNamed:@"Image-4"], [UIImage imageNamed:@"Image-3"], nil];
      self.tigers = [NSArray arrayWithObjects:[UIImage imageNamed:@"Image"], [UIImage imageNamed:@"Image-1"], [UIImage imageNamed:@"Image-2"], nil];
    [self.collectionViewOutlet reloadData];

}


- (IBAction)topViewButtonTapped:(id)sender {
    [self.delegate topButtonTapped:sender];
}

//- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section;{
//    return 1;
//
//}
//
//
//- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath;{
//
//    UICollectionViewCell *cell =[collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
//    return cell;
//}

- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section {
    return 3;
}
// 2
- (NSInteger)numberOfSectionsInCollectionView: (UICollectionView *)collectionView {
    return 1;
}
// 3
- (CustomCollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CustomCollectionViewCell *cell = [cv dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.cellImageViewOutlet.image = [UIImage imageNamed:@"tiger"];
    return cell;
}



@end
