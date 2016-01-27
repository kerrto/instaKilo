//
//  MasterViewControllerCollectionViewController.m
//  instaKilo
//
//  Created by Kerry Toonen on 2016-01-27.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import "MasterViewControllerCollectionViewController.h"
#import "Photo.h"
#import "myPhotoCell.h"

@interface MasterViewControllerCollectionViewController ()

@property NSMutableArray *photoArray;


@end

@implementation MasterViewControllerCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    Photo *tigerLeaping=[[Photo alloc]initWithTitle:@"Tiger Leaping Gorge" Group:@"Adventure" Location:@"Asia" Image:@"photoMountain.jpg"];
    
    Photo *earth=[[Photo alloc]initWithTitle:@"Earth" Group:@"Apple Photo" Location:@"Unknown" Image:@"Cosmos01.jpg"];
    
    Photo *buddha=[[Photo alloc] initWithTitle:@"Buddha" Group:@"Man-made" Location:@"Asia" Image:@"IMG_2090.JPG"];
    
    Photo *bryceCanyon=[[Photo alloc] initWithTitle:@"Bryce Canyon" Group:@"Nature" Location:@"North America" Image:@"IMG_2966.JPG"];
    
    Photo *kayaking=[[Photo alloc] initWithTitle:@"Playboating" Group:@"Adventure" Location:@"Africa" Image:@"photo3.jpg"];
    
    Photo *prettyLandScape=[[Photo alloc] initWithTitle:@"Pretty Landscape" Group:@"Nature" Location:@"Unknown" Image:@"Aerial03.jpg"];
    
    Photo *leafyTrees=[[Photo alloc] initWithTitle:@"Trees in Palau" Group:@"Nature" Location:@"Oceania" Image:@"photo4.jpg"];
    
    Photo *nepalHills=[[Photo alloc] initWithTitle:@"Hills in Nepal" Group:@"Man-made" Location:@"Asia" Image:@"photo5.jpg"];
    
    Photo *ceiling=[[Photo alloc] initWithTitle:@"Istanbul Ceiling" Group:@"Man-made" Location:@"Europe" Image:@"photo6.jpg"];
    
    Photo *jellyfish=[[Photo alloc] initWithTitle:@"Jellyfish" Group:@"Nature" Location:@"Oceania" Image:@"P1010229.JPG"];
    
    self.photoArray=[NSMutableArray array];
    [self.photoArray addObject:tigerLeaping];
    [self.photoArray addObject:earth];
    [self.photoArray addObject:buddha];
    [self.photoArray addObject:bryceCanyon];
    [self.photoArray addObject:kayaking];
    [self.photoArray addObject:prettyLandScape];
    [self.photoArray addObject:leafyTrees];
    [self.photoArray addObject:nepalHills];
    [self.photoArray addObject:ceiling];
    [self.photoArray addObject:jellyfish];
    
    
    
                        
    
    
    
    
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
#warning Incomplete implementation, return the number of sections
    return 2;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of items
    return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    myPhotoCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"myPhotoCell" forIndexPath:indexPath];
    
    // Configure the cell
    
    Photo *photo =self.photoArray[indexPath.row];
    cell.photoCell1.image=photo.photo;
    
    
    return cell;
}



#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
