//
//  Transaction.h
//  InformationProtectionIOS
//
//  Created by Ira on 15.10.17.
//  Copyright © 2017 IraNikolenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Transaction : NSObject

@property (nonatomic, strong, nonnull) NSString *transactionID;
@property (nonatomic, strong, nonnull) NSString *date;
@property (nonatomic, strong, nonnull) NSString *requestor;
@property (nonatomic, strong, nonnull) NSString *location;
@property (nonatomic, strong, nonnull) NSString *status;
@property (nonatomic, strong, nonnull) NSString *transactionCode;
@property (nonatomic, strong, nonnull) NSString *descriptionTransaction;
@property (nonatomic, strong, nonnull) NSString *requestorLogo;

- (instancetype)initWithTransactionID:(NSString *) transactionID date:(NSString *)date requestor:(NSString *) requestor location:(NSString *) location status:(NSString *) status transactionCode:(NSString *) transactionCode description:(NSString *) description requestorLogo:(NSString *) requestorLogo;

- (instancetype)initWithTransactionID:(NSString *) transactionID;

@end
