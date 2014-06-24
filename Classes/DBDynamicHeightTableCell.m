//
//  DBDynamicHeightCell.m
//
//  Created by Daniel Bowden on 29/05/2014.
//  Copyright (c) 2014 Daniel Bowden. All rights reserved.
//

#import "DBDynamicHeightTableCell.h"

static DBDynamicHeightTableCell *prototypeStaticCell = nil;

@implementation DBDynamicHeightTableCell

- (NSString *)reuseIdentifier
{
    return [[self class] cellIdentifier];
}

+ (NSString *)cellIdentifier
{
    return NSStringFromClass([self class]);
}

+ (UINib *)nib
{
    NSAssert(NO, @"This is an abstract method and should be overridden");
    return nil;
}

+ (CGFloat)estimatedRowHeight
{
    return 0.0; //default
}

+ (instancetype)prototypeCell
{
    if (!prototypeStaticCell || ![prototypeStaticCell.reuseIdentifier isEqualToString:[self cellIdentifier]])
    {
        prototypeStaticCell = [[[self nib] instantiateWithOwner:self options:nil] firstObject];
    }
    
    return prototypeStaticCell;
}

- (CGFloat)heightForObject:(id)object
{
    [self populateWithObject:object];
    
    [self.contentView setNeedsUpdateConstraints];
    [self.contentView updateConstraintsIfNeeded];
    
    self.bounds = CGRectMake(0.0f, 0.0f, 320.0, CGRectGetHeight(self.bounds));
    
    [self.contentView setNeedsLayout];
    [self.contentView layoutIfNeeded];
    
    CGSize size = [self.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    
    return size.height + 1; //+1 accounts for row separator
}

- (void)populateWithObject:(id)object
{
    NSAssert(NO, @"This is an abstract method and should be overridden");
}

@end
