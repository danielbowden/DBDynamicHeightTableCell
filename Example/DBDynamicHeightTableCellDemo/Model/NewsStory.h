//
//  NewsStory.h
//  DBDynamicHeightTableCellDemo
//
//  Created by Daniel Bowden on 24/06/2014.
//  Copyright (c) 2014 Daniel Bowden. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NewsStory : NSObject

@property (nonatomic, copy) NSString *headline;
@property (nonatomic, copy) NSString *summary;

+ (instancetype)newsStoryWithHeadline:(NSString *)headline summary:(NSString *)summary;

@end
