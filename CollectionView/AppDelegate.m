//
//  AppDelegate.m
//  CollectionView
//
//  Created by AlexWu on 3/22/14.
//  Copyright (c) 2014 AlexWu. All rights reserved.
//

#import "AppDelegate.h"
#import "AlexAppEntities.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (void)awakeFromNib
{
    [_collectionView setSelectable:YES];
    [NSThread detachNewThreadSelector:@selector(gatherAppData) toTarget:self withObject:nil];
}

- (void)gatherAppData
{
    NSMutableArray *_appData = [[NSMutableArray alloc]init];
    @autoreleasepool{
        NSFileManager *_fm = [NSFileManager defaultManager];
        NSString *path = @"/Applications";
        NSArray *contents = [_fm contentsOfDirectoryAtPath:path error:nil];
        
        for (NSString *string in contents){
            if ([[string pathExtension]isEqualToString:@"app"]){
                NSString *fullPath = [path stringByAppendingPathComponent:string];
                AlexAppEntities *item = [[[AlexAppEntities alloc]init] autorelease];
                NSImage *image = [[NSWorkspace sharedWorkspace]iconForFile:fullPath];
                item.image = image;
                item.name = [string stringByDeletingPathExtension];
                [_appData addObject:item];
            }
        }
    }
    [self performSelectorOnMainThread:@selector(updateData:) withObject:_appData waitUntilDone:YES];
    [_appData release];
}

- (void)updateData:(NSMutableArray *)obj;
{
    [_collectionView setContent:obj];
}
@end
