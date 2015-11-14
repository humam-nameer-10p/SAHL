//
//  FindSAHLViewController.m
//  Sahl
//
//  Created by Amber Darr on 14/11/2015.
//  Copyright (c) 2015 Humam Nameer. All rights reserved.
//

#import "FindSAHLViewController.h"
#import "FindSahlTableViewCell.h"

@interface FindSAHLViewController ()

@end

NSMutableArray *tableImages;
NSMutableArray *tableTitle;
NSMutableArray *tableDescription;
NSMutableDictionary *dict;
@implementation FindSAHLViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    tableImages = [[NSMutableArray alloc] initWithObjects:@"information_icon" , @"Calender_icon", @"Map_icon", @"Car_icon",  nil];
    
    tableTitle = [[NSMutableArray alloc] initWithObjects:@"TASK DETAILS" , @"DATE & TIME", @"TASK ADDRESS" , @"VEHICLE REQUIREMENTS", nil];
    
    tableDescription = [[NSMutableArray alloc] initWithObjects:@"Clean", @"Thu, Nov 5 - Anytime", @"Chicago ,IL USA", @"not needed for task",nil];
    _sahlTableView.delegate = self;
    _sahlTableView.dataSource = self;
    _sahlTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TableView DataSource/Delegates

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *identifier = @"findSahlCell";
    FindSahlTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"FindSahlTableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.sideImageView.image = [UIImage imageNamed:[tableImages objectAtIndex:indexPath.row]];
    cell.cellTitle.text = [NSString stringWithFormat:@"%@" , [tableTitle objectAtIndex:indexPath.row]];
    cell.cellDescription.text = [NSString stringWithFormat:@"%@" , [tableDescription objectAtIndex:indexPath.row]];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 77;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
  
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
