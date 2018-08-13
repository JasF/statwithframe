//
//  main.m
//  objcapp
//
//  Created by Jasf on 12.08.2018.
//  Copyright © 2018 Home. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#include "greeter.h"
#include <stdio.h>
#import "NewExampleWindow.h"
#import "AppDelegate.h"


int bootstrap_e() {
    @autoreleasepool {
        NSLog(@"Bootstrap init");
        id delegate = [NewAppDelegate new];
        id window = [NewExampleWindow new];
        NSLog(@"Bootstrap init delegate: %@", delegate);
        NSLog(@"Bootstrap init window: %@", window);
        NSLog(@"Bootstrap init2");
        char *args[2];
        args[0] = "/Users/jasf/Desktop";
        NSLog(@"Bootstrap init3");
        int result = NSApplicationMain(1, (const char **)&args);
        
        NSLog(@"Bootstrap init23");
        return result;
    }
}
extern "C" {
int greet(const char *name, int year, char *out) {
    int n;
    
    n = sprintf(out, "Greetings, %s from %d! We come in peace :)", name, year);
    
    return n;
}
    
    int bootstrap() {
        return bootstrap_e();
    }
    
};

int Main(int argc, const char * argv[]) {
    return NSApplicationMain(argc, argv);
}
