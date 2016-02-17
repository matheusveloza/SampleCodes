//
//  Photos.m
//  BandaFly
//
//  Created by Matheus on 17/02/16.
//  Copyright © 2016 Matheus Veloza. All rights reserved.
//

#import "Photos.h"
#import "Options.h"

@implementation Photos

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _dataSource = [[NSMutableArray alloc] init];
    [_dataSource addObject:@"object"];
    [_dataSource addObject:@"object"];
    [_dataSource addObject:@"object"];
    [_dataSource addObject:@"object"];
    [_dataSource addObject:@"object"];
    [_dataSource addObject:@"object"];
    [_dataSource addObject:@"object"];
    [_dataSource addObject:@"object"];
    [_dataSource addObject:@"object"];
    [_dataSource addObject:@"object"];
    
    [self createTable];
}

-(void)createTable{
    
    if(_table == nil){
        _table = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, widthapp, heightapp)];
        _table.delegate  = self;
        _table.dataSource = self;
        _table.backgroundColor = [UIColor clearColor];
        _table.separatorColor = [UIColor clearColor];
        _table.separatorStyle = UITableViewCellSeparatorStyleNone;
        _table.multipleTouchEnabled = YES;
        _table.delaysContentTouches = YES;
        _table.showsVerticalScrollIndicator = false;
        _table.showsHorizontalScrollIndicator = false;
        
        [self.view addSubview:_table];
        
    } else{
        [_table reloadData];
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_dataSource count];
}

-(BOOL) allowsHeaderViewsToFloat{
    return false;
}

-(BOOL) allowsFooterViewsToFloat{
    return false;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    UIView *blue = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    blue.backgroundColor = [UIColor blueColor];
    [cell addSubview:blue];
    
    return cell;
}

- (UIView *) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return nil;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    return nil;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    float height = 100;
    
    return height;
}

- (void)tableView: (UITableView *)tableView
didSelectRowAtIndexPath: (NSIndexPath *)indexPath
{
    NSLog(@"indexPath.section%i", (int)indexPath.section);
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    return indexPath;
}


@end
