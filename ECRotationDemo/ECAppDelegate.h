//
//  ECAppDelegate.h
//  ECRotationDemo
//
//  Created by Chris Stroud on 12/28/12.
//  Copyright (c) 2012 Elevé Creations. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ECTabBarController.h"

@interface ECAppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) ECTabBarController *tabBarController;

@end
