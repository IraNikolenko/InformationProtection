//
//  ServerHTTPRequest.m
//  InformationProtectionIOS
//
//  Created by Ira on 31.10.17.
//  Copyright © 2017 IraNikolenko. All rights reserved.
//

#import "ServerHTTPRequest.h"

NSString * const kPOSTRequest = @"POST";
NSString * const kGETRequest = @"GET";
NSString * const kDELETERequest = @"DELETE";

@interface ServerHTTPRequest ()

@property (strong, nonatomic) NSString *httpMethod;
@property (strong, nonatomic) NSData *httpBody;

@end

@implementation ServerHTTPRequest

- (instancetype)initWithURL:(NSString *)url {
    self = [super init];
    if (self) {
        _url = url;
        _request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:url]];
    }
    return self;
}

- (instancetype)initWithURL:(NSString *)url parameters:(NSDictionary *)parameters {
    self = [self initWithURL:url];
    if (self) {
        _parameters = parameters;
        @try {
            _httpBody = [NSJSONSerialization dataWithJSONObject:parameters options:NSJSONWritingPrettyPrinted error:nil];
        } @catch (NSException *exception) {
            NSLog(@"HTTPBody exception %@", exception.name);
        }
        
    }
    return self;
}

- (instancetype)initWithURL:(NSString *)url parameters:(NSDictionary *)parameters HTTPMethod:(NSString *)HTTPMethod {
    self = [self initWithURL:url parameters:parameters];
    if (self) {
        _httpMethod = HTTPMethod;
    }
    return self;
}

- (void)setHTTPMethod:(NSString *)HTTPMethod {
    [self.request setHTTPMethod:HTTPMethod];
}

- (void)addHeaders:(NSDictionary *)headers {
    for (NSString *value in headers) {
        [self setHeaderValue:value forHTTPHeaderField:headers[value]];
    }
}

- (void)setHeaderValue:(NSString *)value forHTTPHeaderField:(NSString *)field {
    [self.request setValue:value forHTTPHeaderField:field];
}

- (void)sendRequest:(void (^)(NSURLResponse *, NSDictionary *, NSError *))completion {
    
    if (self.httpMethod == nil) {
        self.httpMethod = kGETRequest;
    }
    
    NSString *requedHeaderValue = @"application/json";
    [self.request setValue:requedHeaderValue forHTTPHeaderField:@"Content-type"];
    [self.request setHTTPMethod:self.httpMethod];
    [self.request setHTTPBody:self.httpBody];
    
    NSURLSessionTask *task = [[NSURLSession sharedSession]dataTaskWithRequest:self.request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if(error){
            NSLog(@"Error: %@ from %@", error, NSStringFromSelector(_cmd));
        } else {
            NSDictionary* json = [NSJSONSerialization JSONObjectWithData:data
                                                                 options:kNilOptions
                                                                   error:&error];
            
            completion(response, json, error);
        }
    }];
    [task resume];
}

@end
