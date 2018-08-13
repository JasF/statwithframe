//
//  ExampleWindow.m
//  Example Embedder
//
//  Created by Jasf on 13.08.2018.
//  Copyright © 2018 Google LLC. All rights reserved.
//

#import "NewExampleWindow.h"
#import "FlutterEmbedderMac.h"
#import "FLEColorPanelPlugin.h"
#import "FLEFileChooserPlugin.h"
#import "FLEMenubarPlugin.h"

@interface NewExampleWindow ()

@end

@implementation NewExampleWindow

- (void)awakeFromNib {
    [super awakeFromNib];
    NSURL *url = [NSURL fileURLWithPath:@"flutter_assets" relativeToURL:[[NSBundle mainBundle] resourceURL]];
    [_flutterViewController addPlugin:[FLEColorPanelPlugin new]];
    [_flutterViewController addPlugin:[FLEFileChooserPlugin new]];
    [_flutterViewController addPlugin:[FLEMenubarPlugin new]];
    [_flutterViewController launchEngineWithAssetsPath:url
                                            asHeadless:false
                                  commandLineArguments:@[@"--dart-non-checked-mode"]];
    [super awakeFromNib];
}
@end

/*
 
 
 class ExampleWindow: NSWindow {
 @IBOutlet weak var flutterViewController: FLEViewController!
 
 override func awakeFromNib() {
 let assets = NSURL.fileURL(withPath: "flutter_assets", relativeTo: Bundle.main.resourceURL)
 flutterViewController.add(FLEColorPanelPlugin())
 flutterViewController.add(FLEFileChooserPlugin())
 flutterViewController.add(FLEMenubarPlugin())
 flutterViewController.launchEngine(
 withAssetsPath: assets,
 asHeadless: false,
 commandLineArguments: [CommandLine.arguments[0], "--dart-non-checked-mode"])
 
 super.awakeFromNib()
 }
 }
 
 
 */
