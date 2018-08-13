//
//  ExampleWindow.h
//  Example Embedder
//
//  Created by Jasf on 13.08.2018.
//  Copyright © 2018 Google LLC. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class FLEViewController;
@interface NewExampleWindow : NSWindow
@property (nonatomic) IBOutlet FLEViewController *flutterViewController;
@end

