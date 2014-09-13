//
//  UITableViewDataSource.m
//  Recipe App
//
//  Created by TO on 9/13/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "RATableViewDataSource.h"

@implementation RATableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self recipetitles].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [UITableViewCell new];
    }
    cell.textLabel.text = [self recipetitles][indexPath.row];
    return cell;
}
-(NSArray *)recipetitles {
    return @[@"Put all recipe titles here later"];
}
-(NSString *)titleAtIndexPath:(NSIndexPath *)path{
    if (path.row < [self recipetitles].count) {
        return [self recipetitles][path.row];
    }else{
        return nil;
}
}
@end