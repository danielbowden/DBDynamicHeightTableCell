//
//  NewsStory.m
//  DBDynamicHeightTableCellDemo
//
//  Created by Daniel Bowden on 24/06/2014.
//  Copyright (c) 2014 Daniel Bowden. All rights reserved.
//

#import "NewsStory.h"

@implementation NewsStory

+ (instancetype)newsStoryWithHeadline:(NSString *)headline summary:(NSString *)summary
{
    NewsStory *story = [[self alloc] init];
    story.headline = headline;
    story.summary = summary;
    
    return story;
}

@end
