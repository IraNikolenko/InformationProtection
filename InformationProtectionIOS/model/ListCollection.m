//
//  ListCollection.m
//  InformationProtectionIOS
//
//  Created by Dayrabekov Artem on 30.10.17.
//  Copyright © 2017 IraNikolenko. All rights reserved.
//

#import "ListCollection.h"
#import "ServerHTTPTransactionManager.h"
#import "Transaction+DictionarySerialization.h"

NSString * const kPKBHaloSongCollectionArrayKeyPath = @"transactions";

@implementation ListCollection

-(id) init {
    self = [super init];
    self.transactions = [NSMutableArray array];
    [self loadAllTransactions];
    return self;
}

+ (instancetype)sharedMainModel {
    static ListCollection *modelController;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        modelController = [[ListCollection alloc] init];
    });
    return modelController;
}

- (void)loadAllTransactions {
    [ServerHTTPTransactionManager getAllTransactionsWithCompletionHandler:^(NSDictionary *result, BOOL success) {
        if (result) {
            for (NSDictionary *immutDictionary in result) {
                Transaction *transaction = [[Transaction alloc] initWithDictionary:immutDictionary];
                [self willChangeValueForKey:kPKBHaloSongCollectionArrayKeyPath];
                [self.transactions addObject:transaction];
                [self didChangeValueForKey:kPKBHaloSongCollectionArrayKeyPath];
            }
        }
    }];
}

@end
