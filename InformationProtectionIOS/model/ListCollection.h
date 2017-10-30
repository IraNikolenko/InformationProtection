//
//  ListCollection.h
//  InformationProtectionIOS
//
//  Created by Dayrabekov Artem on 30.10.17.
//  Copyright © 2017 IraNikolenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ListCollection : NSObject
@property (nonatomic, strong, nonnull) NSMutableArray *transactions;
+ (instancetype)sharedMainModel;
@end
