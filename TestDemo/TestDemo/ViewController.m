//
//  ViewController.m
//  TestDemo
//
//  Created by zhangshupeng on 2019/1/6.
//  Copyright © 2019年 KZ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"TestDemo";
    [self.tableView registerClassArray:@[@"MenuCell"]];
    [self.tableView setViewModel:[ViewControllerViewModel new]];
    [self configData];
    self.view.backgroundColor = [UIColor colorWithWhite:0.8 alpha:1];
    self.tableView.tableFooterView = [UIView new];
}

- (void)configData {
    [self.tableView.viewModel.dataModel addDataArray:@[@"KZBaseKit",@"KZWebViewContainer"] atSection:0];
}


@end


@implementation ViewControllerViewModel

- (NSString *)cellIdentify:(NSIndexPath *)indexPath {
    return @"MenuCell";
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
