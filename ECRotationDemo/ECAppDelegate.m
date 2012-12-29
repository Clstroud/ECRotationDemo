//
//  ECAppDelegate.m
//  ECRotationDemo
//
//  Created by Chris Stroud on 12/28/12.
//  Copyright (c) 2012 Elevé Creations. All rights reserved.
//

#import "ECAppDelegate.h"
#import "ECNavigationController.h"
#import "ECFirstViewController.h"
#import "ECSecondViewController.h"

@implementation ECAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

	UIViewController *viewController1 = [[ECFirstViewController  alloc] initWithNibName:@"ECFirstViewController_iPhone"  bundle:nil];
	UIViewController *viewController2 = [[ECSecondViewController alloc] initWithNibName:@"ECSecondViewController_iPhone" bundle:nil];

	ECNavigationController *navigationController1 = [[ECNavigationController alloc] initWithRootViewController:viewController1];
	ECNavigationController *navigationController2 = [[ECNavigationController alloc] initWithRootViewController:viewController2];
	
	self.tabBarController = [[ECTabBarController alloc] init];
	self.tabBarController.viewControllers = @[navigationController1, navigationController2];
	
	[self.window setRootViewController:_tabBarController];
    [self.window makeKeyAndVisible];
    return YES;
}


@end
