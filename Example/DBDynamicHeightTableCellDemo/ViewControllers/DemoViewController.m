//
//  DemoViewController.m
//  DBDynamicHeightTableCellDemo
//
//  Created by Daniel Bowden on 24/06/2014.
//  Copyright (c) 2014 Daniel Bowden. All rights reserved.
//

#import "DemoViewController.h"

#import "InfoCell.h"
#import "NewsStory.h"

@interface DemoViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, weak) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSArray *newsStories;

- (NSArray *)generateDemoData;

@end

@implementation DemoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"News Stories";
    
    [self.tableView registerNib:[InfoCell nib] forCellReuseIdentifier:[InfoCell cellIdentifier]];
    self.tableView.estimatedRowHeight = [InfoCell estimatedRowHeight];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.newsStories = [self generateDemoData];
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.newsStories.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NewsStory *story = self.newsStories[indexPath.row];
    
    return [[InfoCell prototypeCell] heightForObject:story];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NewsStory *story = self.newsStories[indexPath.row];
    InfoCell *cell = [tableView dequeueReusableCellWithIdentifier:[InfoCell cellIdentifier] forIndexPath:indexPath];
    [cell populateWithObject:story];
    
    return cell;
}

- (NSArray *)generateDemoData
{
    return @[
            [NewsStory newsStoryWithHeadline:@"Headline 1" summary:@"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras condimentum, tellus a elementum iaculis, augue ipsum ornare arcu, nec imperdiet."],

            [NewsStory newsStoryWithHeadline:@"Headline 2" summary:@"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi commodo, sem id luctus lobortis, est diam elementum justo, eget porttitor eros lacus id dui. Phasellus sodales laoreet blandit. Vestibulum varius."],

            [NewsStory newsStoryWithHeadline:@"Headline 3" summary:@"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus fermentum leo laoreet libero malesuada dictum. Fusce ac augue metus. Sed egestas sem vitae venenatis tincidunt. Etiam sapien felis, placerat at laoreet eu, suscipit vehicula lacus. Mauris rutrum, lectus non pharetra."],

            [NewsStory newsStoryWithHeadline:@"Headline 4" summary:@"Lorem ipsum dolor sit amet."],

            [NewsStory newsStoryWithHeadline:@"Headline 5" summary:@"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas euismod velit et tortor ultrices dapibus. Praesent ullamcorper tellus convallis, porttitor mi at, dignissim nulla. Quisque."],

            [NewsStory newsStoryWithHeadline:@"Headline 6" summary:@"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quis mauris fringilla, eleifend elit blandit."],

            [NewsStory newsStoryWithHeadline:@"Headline 7" summary:@"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras condimentum, tellus a elementum iaculis, augue ipsum ornare arcu, nec imperdiet."],

            [NewsStory newsStoryWithHeadline:@"Headline 8" summary:@"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi commodo, sem id luctus lobortis, est diam elementum justo, eget porttitor eros lacus id dui. Phasellus sodales laoreet blandit. Vestibulum varius."],

            [NewsStory newsStoryWithHeadline:@"Headline 9" summary:@"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus fermentum leo laoreet libero malesuada dictum. Fusce ac augue metus. Sed egestas sem vitae venenatis tincidunt. Etiam sapien felis, placerat at laoreet eu, suscipit vehicula lacus. Mauris rutrum, lectus non pharetra."],

            [NewsStory newsStoryWithHeadline:@"Headline 10" summary:@"Lorem ipsum dolor sit amet."],

            [NewsStory newsStoryWithHeadline:@"Headline 11" summary:@"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas euismod velit et tortor ultrices dapibus. Praesent ullamcorper tellus convallis, porttitor mi at, dignissim nulla. Quisque."],

            [NewsStory newsStoryWithHeadline:@"Headline 12" summary:@"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quis mauris fringilla, eleifend elit blandit."]
             ];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
