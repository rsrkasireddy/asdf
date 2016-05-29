//
//  ViewController.m
//  2TableViews
//
//  Created by Ideabytes on 27/05/16.
//  Copyright © 2016 akonect. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"
@interface ViewController ()
{
    int tag;
    
}



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _table1Array=[[NSMutableArray alloc]init];
    _table2Array=[[NSMutableArray alloc]init];
    
    
    _tableView1.dataSource=self;
    _tableView2.dataSource=self;
    
    _tableView1.delegate=self;
    _tableView2.delegate=self;
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(_tableView1==tableView)
    {
        return 15;
    }
    else {
        return 15;
    }
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 250;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(tableView==_tableView1)
    {
       
        
        CustomTableViewCell *cell = (CustomTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"custom"];
        if (cell == nil)
        {
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomTableViewCell" owner:self options:nil];
            cell = [nib objectAtIndex:0];
        }
        
        cell.cellLabel.text = @"Barcelona";
        cell.cellTextField.delegate=self;
        return cell;
    }
    else

    {
        
//;
//        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier2];
        CustomTableViewCell *cell = (CustomTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"custom"];
        if (cell == nil)
        {
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomTableViewCell" owner:self options:nil];
            cell = [nib objectAtIndex:0];

        }
        
        cell.cellLabel.text = @"Real Madrid" ;
        cell.cellImage.image=[UIImage imageNamed:@"CR7.jpg"];
        cell.cellTextField.delegate=self;
        
                return cell;
    

}
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    

    if(tableView==_tableView1)
    {
        tag=1;


        
        NSLog(@" tAG %i",tag);
    }
    
    if(tableView==_tableView2)
    {
        tag=2;

        
         NSLog(@"tag %i",tag);
    }

    

}

    
- (void)textFieldDidBeginEditing:(UITextField*)textField
    {
        NSLog(@"hi");
        
        }
  
    
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
if(tag==1)
{
    [_table1Array addObject:textField.text];
    [textField resignFirstResponder];
    
    NSLog(@"table1Array %@",_table1Array);
    _dataArray = [[NSArray alloc] initWithArray:_table1Array];
    
    NSUserDefaults*barca=[NSUserDefaults standardUserDefaults];
        [barca setObject:_dataArray forKey:@"barca"];
    

    

    
}
    
    
    if(tag==2)
    {
        [_table2Array addObject:textField.text];
        [textField resignFirstResponder];
        
        NSLog(@"table2Array %@",_table2Array);
        
        NSUserDefaults*madrid=[NSUserDefaults standardUserDefaults];
        [madrid setObject:_tableView2 forKey:@"barca"];


    }

    
    
    
    
    return YES;
    

    
}

    
    
    
    
    
    
    
    
    
    
    


-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    

    CATransform3D rotation;
    rotation = CATransform3DMakeRotation( (90.0*M_PI)/180, 0.0, 0.7, 0.4);
    rotation.m34 = 0.5/ -100;
    
    

    
   
    cell.layer.transform = rotation;

    
    
    [UIView beginAnimations:@"rotation" context:NULL];
    [UIView setAnimationDuration:0.8];
    cell.layer.transform = CATransform3DIdentity;
    cell.alpha = 1;
    cell.layer.shadowOffset = CGSizeMake(0, 0);
    [UIView commitAnimations];
    
}



- (IBAction)VsButnPressed:(id)sender {
    
    
    NSUserDefaults*barca=[NSUserDefaults standardUserDefaults];
    NSLog(@"%@ team Barca",[barca  objectForKey:@"barca"]);
    

    
}
@end
