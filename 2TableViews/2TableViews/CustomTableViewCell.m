//
//  CustomTableViewCell.m
//  2TableViews
//
//  Created by Ideabytes on 27/05/16.
//  Copyright © 2016 akonect. All rights reserved.
//

#import "CustomTableViewCell.h"

@implementation CustomTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
//    _cellTextField.delegate=self;
    // Initialization code
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField ==_cellTextField) {
        [textField resignFirstResponder];
//        [textField becomeFirstResponder];
        return NO;
    }
    return YES;
}
@end
