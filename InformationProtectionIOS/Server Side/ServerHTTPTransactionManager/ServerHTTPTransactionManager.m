//
//  ServerHTTPTransactionManager.m
//  InformationProtectionIOS
//
//  Created by Ira on 31.10.17.
//  Copyright © 2017 IraNikolenko. All rights reserved.
//

#import "ServerHTTPTransactionManager.h"
#import "ServerHTTPRequest.h"

static NSString * const HTTPHeaderPath = @"https://protection-information.herokuapp.com/transaction";

@implementation ServerHTTPTransactionManager

+ (void)getAllTransactionsWithCompletionHandler:(void (^)(NSDictionary *result, BOOL success))completion {
    ServerHTTPRequest *httpRequest = [[ServerHTTPRequest alloc] initWithURL:HTTPHeaderPath];
    [httpRequest setHTTPMethod:kGETRequest];
    
    [httpRequest sendRequest:^(NSURLResponse *response, NSDictionary *responseObject, NSError *error) {
        if (!error) {
            completion(responseObject, YES);
        } else {
            NSLog(@"error: %@ from: %@", error, NSStringFromSelector(_cmd));
            completion(nil, NO);
        }
    }];
};

+ (void)createTransaction:(NSDictionary *)transaction completionHandler:(void (^)(BOOL success))completion {
    ServerHTTPRequest *httpRequest = [[ServerHTTPRequest alloc] initWithURL:HTTPHeaderPath parameters:transaction HTTPMethod:kPOSTRequest];
    
    [httpRequest sendRequest:^(NSURLResponse *response, NSDictionary *responseObject, NSError *error) {
        if (!error) {
            completion(YES);
        } else {
            NSLog(@"error: %@ from: %@", error, NSStringFromSelector(_cmd));
            completion(NO);
        }
    }];
};

+ (void)getTransactionWithID:(NSString *)transactionID completionHandler:(void (^)(NSDictionary *result, BOOL success))completion {
    NSString *url = [NSString stringWithFormat:@"%@/%@", HTTPHeaderPath, transactionID];
    ServerHTTPRequest *httpRequest = [[ServerHTTPRequest alloc] initWithURL:url];
    [httpRequest setHTTPMethod:kGETRequest];
    
    [httpRequest sendRequest:^(NSURLResponse *response, NSDictionary *responseObject, NSError *error) {
        if (!error) {
            completion(responseObject, YES);
        } else {
            NSLog(@"error: %@ from: %@", error, NSStringFromSelector(_cmd));
            completion(nil, NO);
        }
    }];
};

+ (void)deleteTransactionWithID:(NSString *)transactionID completionHandler:(void (^)(BOOL success))completion {
    NSString *url = [NSString stringWithFormat:@"%@?id=%@", HTTPHeaderPath, transactionID];
    ServerHTTPRequest *httpRequest = [[ServerHTTPRequest alloc] initWithURL:url];
    [httpRequest setHTTPMethod:kDELETERequest];
    
    [httpRequest sendRequest:^(NSURLResponse *response, NSDictionary *responseObject, NSError *error) {
        if (!error) {
            completion(YES);
        } else {
            NSLog(@"error: %@ from: %@", error, NSStringFromSelector(_cmd));
            completion(NO);
        }
    }];
};

@end
