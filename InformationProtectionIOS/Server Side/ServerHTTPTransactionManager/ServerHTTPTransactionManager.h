//
//  ServerHTTPTransactionManager.h
//  InformationProtectionIOS
//
//  Created by Ira on 31.10.17.
//  Copyright © 2017 IraNikolenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ServerHTTPTransactionManager : NSObject

+ (void)getAllTransactionsWithCompletionHandler:(void (^)(NSDictionary *result, BOOL success))completion;
+ (void)createTransaction:(NSDictionary *)transaction completionHandler:(void (^)(BOOL success))completion;
+ (void)getTransactionWithID:(NSString *)transactionID completionHandler:(void (^)(NSDictionary *result, BOOL success))completion;
+ (void)deleteTransactionWithID:(NSString *)transactionID completionHandler:(void (^)(BOOL success))completion;

@end
