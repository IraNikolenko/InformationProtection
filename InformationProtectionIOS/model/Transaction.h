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
@property (nonatomic, strong, nonnull) NSString *description;
@property (nonatomic, strong, nonnull) NSString *requestorLogo;

@end
