//
//  ViewController.m
//  TestTableView
//
//  Created by 傅小柳 on 2014/7/13.
//  Copyright (c) 2014年 Harris. All rights reserved.
//

#import "ViewController.h"
#import "HelloCustomCell.h"

@interface ViewController ()

@property (strong, nonatomic) NSArray *companyNameList;
@property (strong, nonatomic) NSArray *companyImageNameList;

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setupView];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self getData];
}


- (void)setupView
{
    [self.tableView registerNib:[UINib nibWithNibName:@"HelloCustomCell"
                                               bundle:nil]
         forCellReuseIdentifier:HELLO_CUSTOM_CELL_IDENTIFIER];
}

- (void)getData
{
    _companyNameList = @[@"Apple", @"Google", @"Facebook", @"Amazon", @"LinkedIn"];
    _companyImageNameList = @[@"Apple", @"Google", @"Facebook", @"Amazon", @"LinkedIn"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _companyNameList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    HelloCustomCell *cell =
    [tableView dequeueReusableCellWithIdentifier:HELLO_CUSTOM_CELL_IDENTIFIER];
    
    if (cell == nil) {
        cell = [[HelloCustomCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:HELLO_CUSTOM_CELL_IDENTIFIER];
    }
    
    cell.companyNameLabel.text = [_companyNameList objectAtIndex:indexPath.row];
    
    cell.companyImageView.image =
    [UIImage imageNamed:[_companyImageNameList objectAtIndex:indexPath.row]];
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return HELLO_CELL_HEIGHT;
}

@end
