//
//  PWObjFolderManger.h
//  ObjFolderManager
//
//  Created by nali on 15/12/9.
//  Copyright © 2015年 pengwll. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PWObjFolderManger : NSObject

+ (PWObjFolderManger*) sharedInstance;


- (void)setObj:(id)obj;

@end
