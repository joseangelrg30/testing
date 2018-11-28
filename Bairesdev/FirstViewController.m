//
//  FirstViewController.m
//  Bairesdev
//
//  Created by Jose Angel Ramirez Garza on 11/28/18.
//  Copyright © 2018 bairesdev. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController () <UITableViewDataSource, UITableViewDelegate> {
    NSMutableArray *numbers;
}

@end

@implementation FirstViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    numbers = [NSMutableArray array];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"identifier"];
    
    for (int i = 0; i < 100; i++){
        [numbers addObject:[NSString stringWithFormat:@"%i",i]];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"identifier" forIndexPath:indexPath];
    NSString *text = [numbers objectAtIndex:indexPath.row];
    cell.textLabel.text = text;
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return numbers.count;
}

@end
