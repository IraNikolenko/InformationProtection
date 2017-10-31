//
//  Transaction.m
//  InformationProtectionIOS
//
//  Created by Ira on 15.10.17.
//  Copyright © 2017 IraNikolenko. All rights reserved.
//

#import "Transaction.h"

@implementation Transaction

- (instancetype)initWithTransactionID:(NSString *) transactionID {
    self = [super init];
    if (self) {
        self.transactionID = transactionID;
    }
    return self;
}

- (instancetype)initWithTransactionID:(NSString *) transactionID date:(NSString *)date requestor:(NSString *) requestor location:(NSString *) location status:(NSString *) status transactionCode:(NSString *) transactionCode description:(NSString *) description requestorLogo:(NSString *) requestorLogo
{
    self = [self initWithTransactionID:transactionID];
    if (self) {
        self.date = date;
        self.requestor = requestor;
        self.location = location;
        self.status = status;
        self.transactionCode = transactionCode;
        self.descriptionTransaction = description;
        self.requestorLogo = requestorLogo;
    }
    return self;
}

@end
