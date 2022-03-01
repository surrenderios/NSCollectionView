//
//  AlexAppEntities.m
//  CollectionView
//
//  Created by AlexWu on 3/22/14.
//  Copyright (c) 2014 AlexWu. All rights reserved.
//

#import "AlexAppEntities.h"

@implementation AlexAppEntities
@synthesize name = _name;
@synthesize image = _image;

//
- (NSString *)name
{
    if (!_name) {
        _name = @"unknown";
    }
    return _name;
}

- (NSImage *)image
{
    if (!_image) {
        _image = [NSImage imageNamed:@""];
    }
    return _image;
}

- (void)dealloc
{
    [_image release];
    [_name release];
    [super dealloc];
}
@end
