//
//  ListCollection.h
//  InformationProtectionIOS
//
//  Created by Dayrabekov Artem on 30.10.17.
//  Copyright © 2017 IraNikolenko. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString * const kPKBHaloSongCollectionArrayKeyPath;
static void * _Nonnull PKBHaloSongCollectionArrayContext = &PKBHaloSongCollectionArrayContext;

@interface ListCollection : NSObject

@property (nonatomic, strong, readwrite) NSMutableArray *transactions;

+ (instancetype)sharedMainModel;

@end
