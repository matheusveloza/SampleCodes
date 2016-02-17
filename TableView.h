//
//  Photos.h
//  BandaFly
//
//  Created by Matheus on 17/02/16.
//  Copyright © 2016 Matheus Veloza. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Photos : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property(nonatomic, strong) UITableView *table;
@property(nonatomic, strong) NSMutableArray *dataSource;
@property(nonatomic, strong) NSMutableArray *viewSource;

@end
