//
//  InfoCell.m
//  DBDynamicHeightTableCellDemo
//
//  Created by Daniel Bowden on 24/06/2014.
//  Copyright (c) 2014 Daniel Bowden. All rights reserved.
//

#import "InfoCell.h"

#import "NewsStory.h"

@interface InfoCell ()

@property (nonatomic, weak) IBOutlet UILabel *headlineLabel;
@property (nonatomic, weak) IBOutlet UILabel *summaryLabel;

@end

@implementation InfoCell

+ (UINib *)nib
{
    return [UINib nibWithNibName:@"InfoCell" bundle:nil];
}

- (void)awakeFromNib
{
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.accessoryType = UITableViewCellAccessoryNone;
}

- (void)populateWithObject:(id)object
{
    NSAttributedString *attributedHeadline = [[NSAttributedString alloc] initWithString:[object headline] attributes:@{NSUnderlineStyleAttributeName: @(NSUnderlineStyleSingle),
                                                                                                                       NSFontAttributeName: [UIFont boldSystemFontOfSize:16.0]}];
    
    self.headlineLabel.attributedText = attributedHeadline;
    self.summaryLabel.text = [object summary];
}


@end
