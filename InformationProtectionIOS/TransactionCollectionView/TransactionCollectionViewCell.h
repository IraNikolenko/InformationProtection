//
//  TransactionCollectionViewCell.h
//  InformationProtectionIOS
//
//  Created by Ira on 15.10.17.
//  Copyright © 2017 IraNikolenko. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TransactionCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UITextView *dateLabel;
@property (weak, nonatomic) IBOutlet UITextView *requestorLabel;
@property (weak, nonatomic) IBOutlet UITextView *locationLabel;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;

@end
