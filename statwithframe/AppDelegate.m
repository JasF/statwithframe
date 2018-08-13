//
//  AppDelegate.m
//  Example Embedder
//
//  Created by Jasf on 13.08.2018.
//  Copyright © 2018 Google LLC. All rights reserved.
//

#import "AppDelegate.h"

@implementation NewAppDelegate
+ (id)alloc {
    return [super alloc];
}

+ (id)allocWithZone:(struct _NSZone *)zone {
    return [super allocWithZone:zone];
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender {
    return YES;
}
@end
