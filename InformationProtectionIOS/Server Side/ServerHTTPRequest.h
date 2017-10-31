//
//  ServerHTTPRequest.h
//  InformationProtectionIOS
//
//  Created by Ira on 31.10.17.
//  Copyright © 2017 IraNikolenko. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString * const kPOSTRequest;
extern NSString * const kGETRequest;
extern NSString * const kDELETERequest;

@interface ServerHTTPRequest : NSObject

@property (strong, nonatomic) NSMutableURLRequest *request;
@property (strong, nonatomic) NSDictionary *parameters;
@property (strong, nonatomic) NSString *url;

- (instancetype)initWithURL:(NSString *)url;
- (instancetype)initWithURL:(NSString *)url parameters:(NSDictionary *)parameters;
- (instancetype)initWithURL:(NSString *)url parameters:(NSDictionary *)parameters HTTPMethod:(NSString *)HTTPMethod;

// MARK: Method to prepare and send request
- (void)sendRequest:(void (^)(NSURLResponse *response, NSDictionary *responseObject, NSError *error))completion;

// MARK: Method to set single HTTPHeader
- (void)setHeaderValue:(NSString *)value forHTTPHeaderField:(NSString *)field;

// MARK: Method to add headers from NSDictionary to request ("headerValue":"headerField")
- (void)addHeaders:(NSDictionary *)headers;

// MARK: Method to set HTTPMethod of request
- (void)setHTTPMethod:(NSString *)HTTPMethod;

@end
