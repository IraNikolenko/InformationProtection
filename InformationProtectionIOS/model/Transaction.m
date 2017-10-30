//
//  Transaction.m
//  InformationProtectionIOS
//
//  Created by Ira on 15.10.17.
//  Copyright © 2017 IraNikolenko. All rights reserved.
//

#import "Transaction.h"

@implementation Transaction

- (instancetype)initWithTransactionID:(NSString *) transactionID date:(NSString *)date requestor:(NSString *) requestor location:(NSString *) location status:(NSString *) status transactionCode:(NSString *) transactionCode description:(NSString *) description requestorLogo:(NSString *) requestorLogo
{
    self = [super init];
    if (self) {
        self.transactionID = transactionID;
        self.date = date;
        self.requestor = requestor;
        self.location = location;
        self.status = status;
        self.transactionCode = transactionCode;
        self.description = description;
        self.requestorLogo = requestorLogo;
    }
    return self;
}

@end
