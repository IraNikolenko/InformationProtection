//
//  Transaction+DictionarySerialization.m
//  InformationProtectionIOS
//
//  Created by Ira on 31.10.17.
//  Copyright © 2017 IraNikolenko. All rights reserved.
//

#import "Transaction+DictionarySerialization.h"

NSString * const TransactionIdKey = @"id";
NSString * const TransactionDateKey = @"date";
NSString * const TransactionRequesterKey = @"requester";
NSString * const TransactionLocationKey = @"location";
NSString * const TransactionStatusKey = @"status";
NSString * const TransactionTransactionCodeKey = @"transactionCode";
NSString * const TransactionDescriptionKey = @"description";
NSString * const TransactionRequesterLogoKey = @"requesterLogo";

@implementation Transaction (DictionarySerialization)

- (instancetype _Nullable)initWithDictionary:(nonnull NSDictionary *)aDictionary {
    
    self = [self initWithTransactionID:aDictionary[TransactionIdKey] date:aDictionary[TransactionDateKey] requestor:aDictionary[TransactionRequesterKey] location:aDictionary[TransactionLocationKey] status:aDictionary[TransactionStatusKey] transactionCode:aDictionary[TransactionTransactionCodeKey] description:aDictionary[TransactionDescriptionKey] requestorLogo:aDictionary[TransactionRequesterLogoKey]];
    
    return self;
};

- (NSDictionary * _Nonnull)dictionaryRepresantation {
    NSMutableDictionary *answer = [NSMutableDictionary dictionary];
    
    answer[TransactionIdKey] = self.transactionID;
    answer[TransactionDateKey] = self.date;
    answer[TransactionRequesterKey] = self.requestor;
    answer[TransactionLocationKey] = self.location;
    answer[TransactionStatusKey] = self.status;
    answer[TransactionTransactionCodeKey] = self.transactionCode;
    answer[TransactionDescriptionKey] = self.descriptionTransaction;
    answer[TransactionRequesterLogoKey] = self.requestorLogo;
    
    return answer;
};

@end
