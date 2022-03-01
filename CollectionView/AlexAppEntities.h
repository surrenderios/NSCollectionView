//
//  AlexAppEntities.h
//  CollectionView
//
//  Created by AlexWu on 3/22/14.
//  Copyright (c) 2014 AlexWu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AlexAppEntities : NSObject
{
    NSImage  *_image;
    NSString *_name;
}
@property (nonatomic,retain)NSImage *image;
@property (nonatomic,copy)  NSString *name;
@end
