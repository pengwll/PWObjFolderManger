//
//  PWObjFolderManger.m
//  ObjFolderManager
//
//  Created by nali on 15/12/9.
//  Copyright © 2015年 pengwll. All rights reserved.
//

#import "PWObjFolderManger.h"
#import "FCFileManager.h"

#define kObjInfoDict     @"info.plist"

@interface PWObjFolderManger ()
{
    NSString    *_rootPath;
}
@end

@implementation PWObjFolderManger

+ (PWObjFolderManger*)sharedInstance{
    static PWObjFolderManger *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[PWObjFolderManger alloc] init];
    });
    return manager;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _rootPath = [FCFileManager pathForDocumentsDirectory];
        
    }
    return self;
}

- (void)setObj:(id)obj
{
    if ([self isObjectAllreadyInfolder:obj]) {
        
    }

    
}

- (BOOL)isObjectAllreadyInfolder:(id)obj
{
    if (!obj) {
        return NO;
    }
    
    NSString *docPath = [self objDocPathInRootFoder:obj];
    
    return [FCFileManager existsItemAtPath:docPath];
}

- (NSDictionary *)objDocInfoInRootFoder:(id)obj
{
    NSString *docInfo = [self objDocInfoPathInRootFoder:obj];
    
    if ([FCFileManager existsItemAtPath:docInfo]) {
        return [FCFileManager readFileAtPathAsDictionary:docInfo];
    }
    
    return nil;
}

- (NSString *)objDocPathInRootFoder:(id)obj
{
    NSString *docPath = [NSString stringWithFormat:@"%lu", (unsigned long)[obj hash]];
    
    return [NSString stringWithFormat:@"%@/%@",_rootPath,docPath];
}

- (NSString *)objDocInfoPathInRootFoder:(id)obj
{
    NSString *docPath = [self objDocPathInRootFoder:obj];
    
    return [NSString stringWithFormat:@"%@/%@",docPath,kObjInfoDict];
}

@end
