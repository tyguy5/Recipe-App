//
//  RAViewController.m
//  Recipe App
//
//  Created by TO on 9/13/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "RAViewController.h"
#import "RATableViewDataSource.h"
#import "RATableDetailViewController.h"

@interface RAViewController ()

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) RATableViewDataSource *dataSource;
//@property(nonatomic, readonly, retain) UIViewController *visibleViewController;
@property(nonatomic, copy) NSArray *viewControllers;

@end

@implementation RAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.dataSource = [RATableViewDataSource new];
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame];
    self.tableView.dataSource = self.dataSource;
    self.tableView.delegate = self;
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0,0, 100, 100)];
    label.backgroundColor = [UIColor blueColor];
    [self.view addSubview:label];
    
    [self.view addSubview:self.tableView];
}
     
- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
    //RATableDetailViewController *detailVC = [RATableDetailViewController new];
    //self.title = [self.dataSource titleAtIndexPath:indexPath];
    //detailVC.title = [self.dataSource titleAtIndexPath:indexPath];
    //[self.navigationController pushViewController:detailVC animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
