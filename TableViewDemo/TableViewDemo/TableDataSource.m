//
//  TableDataSource.m
//  TableViewDemo
//
//  Created by sunny on 16/5/11.
//  Copyright © 2016年 test. All rights reserved.
//

#import "TableDataSource.h"


@interface TableDataSource () 
@property (nonatomic, strong) NSArray *items;
@property (nonatomic, copy) NSString *cellIdentifier;
@property (nonatomic, copy) TableViewCellConfigureBlock configureBlock;


@end

@implementation TableDataSource


- (id)initWithItems:(NSArray *)anItems cellIdentifier:(NSString *)aCellIdentifier configureCell:(TableViewCellConfigureBlock)cellConfigureBlock {
    if (self = [super init]) {
        self.items = anItems;
        self.cellIdentifier = aCellIdentifier;
        self.configureBlock = [cellConfigureBlock copy];
    }
    return self;
}

#pragma mark -- UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier
                                                            forIndexPath:indexPath];
    id item = [self itemAtIndexPath:indexPath];
    self.configureBlock(cell, item);
    return cell;
}
- (id)itemAtIndexPath:(NSIndexPath *)indexPath {
    return self.items[(NSInteger)indexPath.row];
}

@end
