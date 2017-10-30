//
//  ListCollectionViewController.m
//  InformationProtectionIOS
//
//  Created by Ira on 15.10.17.
//  Copyright © 2017 IraNikolenko. All rights reserved.
//

#import "ListCollectionViewController.h"
#import "TransactionCollectionViewCell.h"
#import "TransactionViewController.h"

@interface ListCollectionViewController ()
@end

@implementation ListCollectionViewController

static NSString * const reuseIdentifier = @"TransactionCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Do any additional setup after loading the view.
//    [self.collectionView performBatchUpdates:^{
//        
//        NSArray *selectedItemsIndexPaths = [self.collectionView indexPathsForSelectedItems];
//        
//        // Delete the items from the data source.
//        [self deleteItemsFromDataSourceAtIndexPaths:selectedItemsIndexPaths];
//        
//        // Now delete the items from the collection view.
//        [self.collectionView deleteItemsAtIndexPaths:selectedItemsIndexPaths];
//        
//    } completion:nil];
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
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of items
    return [[ListCollection sharedMainModel].transactions count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    TransactionCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    [cell.dateLabel setText:@"17.06"];
    [cell.statusLabel setText:@"open"];
    [cell.locationLabel setText:@"jkfh"];
    [cell.requestorLabel setText:@"Organization"];
    
    // Configure the cell
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
   
}
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    TransactionViewController *transactionViewController = segue.destinationViewController;
    NSIndexPath *path = [self.collectionView indexPathForCell:sender];
    transactionViewController.transaction = [ListCollection sharedMainModel].transactions[path.row];
}
-(void)deleteItemsFromDataSourceAtIndexPaths:(NSArray  *)itemPaths
{
    NSMutableIndexSet *indexSet = [NSMutableIndexSet indexSet];
    for (NSIndexPath *itemPath  in itemPaths) {
        [indexSet addIndex:itemPath.row];
    }
    [[ListCollection sharedMainModel].transactions removeObjectsAtIndexes:indexSet];
    
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
