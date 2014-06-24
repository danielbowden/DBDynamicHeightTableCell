//
//  DBDynamicHeightCell.h
//
//  Created by Daniel Bowden on 29/05/2014.
//  Copyright (c) 2014 Daniel Bowden. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DBDynamicHeightTableCell : UITableViewCell

+ (NSString *)cellIdentifier;
+ (UINib *)nib;
+ (CGFloat)estimatedRowHeight;
+ (instancetype)prototypeCell;

- (CGFloat)heightForObject:(id)object;
- (void)populateWithObject:(id)object;

@end
