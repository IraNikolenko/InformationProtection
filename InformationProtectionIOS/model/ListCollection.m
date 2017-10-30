//
//  ListCollection.m
//  InformationProtectionIOS
//
//  Created by Dayrabekov Artem on 30.10.17.
//  Copyright © 2017 IraNikolenko. All rights reserved.
//

#import "ListCollection.h"

@implementation ListCollection
-(id) init{
    self = [super init];
    //Get data from database
    //self.transactions = 
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
@end
