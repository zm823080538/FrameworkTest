//
//  ViewController.m
//  TableViewDemo
//
//  Created by sunny on 16/5/11.
//  Copyright © 2016年 test. All rights reserved.
//

#import "ViewController.h"
#import "TableDataSource.h"
@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) TableDataSource *tableDataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *fonts = [UIFont familyNames];
    for (NSString *fontNames in fonts) {
        NSLog(@"--%@",fontNames);
    }
    NSArray *array = @[@"1苛工工工",@"2",@"3"];
    
//    TableViewCellConfigureBlock configureCell = ^(UITableViewCell * cell, NSString* item) {
//        cell.textLabel.text = item;
//    };
    
    self.tableDataSource = [[TableDataSource alloc] initWithItems:array cellIdentifier:@"cell" configureCell:^(UITableViewCell * cell, NSString* item) {
        cell.textLabel.text = item;
        cell.textLabel.font = [UIFont fontWithName:@"Bradley Hand" size:22];
    }];
    
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:tableView];
    tableView.dataSource = self.tableDataSource;
//    [self.tableView  forCellReuseIdentifier:PhotoCellIdentifier];
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
