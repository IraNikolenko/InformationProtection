//
//  TransactionDetailsViewController.h
//  InformationProtectionIOS
//
//  Created by Dayrabekov Artem on 30.10.17.
//  Copyright © 2017 IraNikolenko. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Transaction.h"

@interface TransactionDetailsViewController : UIViewController

@property (nonatomic, strong, nonnull) Transaction *transaction;
@property (weak, nonatomic) IBOutlet UILabel *transactionID;
@property (weak, nonatomic) IBOutlet UILabel *date;
@property (weak, nonatomic) IBOutlet UILabel *requestor;
@property (weak, nonatomic) IBOutlet UILabel *location;
@property (weak, nonatomic) IBOutlet UILabel *status;
@property (weak, nonatomic) IBOutlet UILabel *transactionCode;
@property (weak, nonatomic) IBOutlet UITextView *transactionDescription;
@property (weak, nonatomic) IBOutlet UILabel *requestorLogo;

@end
