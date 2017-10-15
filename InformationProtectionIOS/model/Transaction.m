//
//  Transaction.m
//  InformationProtectionIOS
//
//  Created by Ira on 15.10.17.
//  Copyright © 2017 IraNikolenko. All rights reserved.
//

#import "Transaction.h"

@implementation Transaction

- (instancetype)initWithTransactionID:(NSString *) transactionID
{
    self = [super init];
    if (self) {
        self.transactionID = transactionID;
    }
    return self;
}

@end
