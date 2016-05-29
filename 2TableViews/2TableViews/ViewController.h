//
//  ViewController.h
//  2TableViews
//
//  Created by Ideabytes on 27/05/16.
//  Copyright © 2016 akonect. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView1;
@property (weak, nonatomic) IBOutlet UITableView *tableView2;
- (IBAction)VsButnPressed:(id)sender;


@property(strong,nonatomic)NSMutableArray*table1Array;
@property(strong,nonatomic)NSMutableArray*table2Array;
@property(strong,nonatomic)NSArray*dataArray;

@end

