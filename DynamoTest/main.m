//
//  main.m
//  DynamoTest
//
//  Created by Fjölnir Ásgeirsson on 5/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "DTAppDelegate.h"

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int ret = UIApplicationMain(argc, argv, nil, NSStringFromClass([DTAppDelegate class]));
    [pool drain];
    return ret;
}
