//
//  TableDataSource.h
//  TableViewDemo
//
//  Created by sunny on 16/5/11.
//  Copyright © 2016年 test. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef void(^TableViewCellConfigureBlock)(id cell, id item);

@class UITableView;

@interface TableDataSource : NSObject <UITableViewDataSource>

- (id)initWithItems:(NSArray *)anItems cellIdentifier:(NSString *)aCellIdentifier configureCell:(TableViewCellConfigureBlock)cellConfigureBlock;


- (id)itemAtIndexPath:(NSIndexPath *)indexPath;
@end
