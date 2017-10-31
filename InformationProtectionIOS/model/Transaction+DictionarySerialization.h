//
//  Transaction+DictionarySerialization.h
//  InformationProtectionIOS
//
//  Created by Ira on 31.10.17.
//  Copyright © 2017 IraNikolenko. All rights reserved.
//

#import "Transaction.h"

@interface Transaction (DictionarySerialization)

extern NSString * const TransactionIdKey;
extern NSString * const TransactionDateKey;
extern NSString * const TransactionRequesterKey;
extern NSString * const TransactionLocationKey;
extern NSString * const TransactionStatusKey;
extern NSString * const TransactionTransactionCodeKey;
extern NSString * const TransactionDescriptionKey;
extern NSString * const TransactionRequesterLogoKey;

- (instancetype _Nullable)initWithDictionary:(nonnull NSDictionary *)aDictionary;
- (NSDictionary * _Nonnull)dictionaryRepresantation;

@end
