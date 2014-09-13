//
//  UITableViewDataSource.h
//  Recipe App
//
//  Created by TO on 9/13/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RATableViewDataSource : NSObject <UITableViewDataSource>

- (NSString *)titleAtIndexPath:(NSIndexPath *)path;

@end
