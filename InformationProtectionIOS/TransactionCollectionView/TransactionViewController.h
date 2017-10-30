//
//  TransactionViewController.h
//  InformationProtectionIOS
//
//  Created by Dayrabekov Artem on 30.10.17.
//  Copyright © 2017 IraNikolenko. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Transaction.h"

@interface TransactionViewController : UIViewController
@property (nonatomic, strong, nonnull) Transaction *transaction;
@end
