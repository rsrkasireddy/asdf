//
//  CustomTableViewCell.h
//  2TableViews
//
//  Created by Ideabytes on 27/05/16.
//  Copyright © 2016 akonect. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *cellImage;
@property (weak, nonatomic) IBOutlet UILabel *cellLabel;
@property (weak, nonatomic) IBOutlet UITextField *cellTextField;

@end
