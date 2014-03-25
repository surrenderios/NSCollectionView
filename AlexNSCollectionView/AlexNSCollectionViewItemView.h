//
//  AlexNSCollectionViewItemView.h
//  AlexNSCollectionView
//
//  Created by AlexWu on 3/23/14.
//  Copyright (c) 2014 AlexWu. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AlexNSCollectionViewItemView : NSView
{
    BOOL _isSelected;
}
@property (nonatomic, assign) BOOL isSelected;

@end


@interface ALExNSCollectionVIewItem : NSCollectionViewItem

@end