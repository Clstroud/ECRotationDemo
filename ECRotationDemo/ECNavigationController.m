//
//  ECNavigationController.m
//  ECRotationDemo
//
//  Created by Chris Stroud on 12/28/12.
//  Copyright (c) 2012 Elevé Creations. All rights reserved.
//

#import "ECNavigationController.h"

@implementation ECNavigationController

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
	return [[self topViewController] shouldAutorotateToInterfaceOrientation:toInterfaceOrientation];
}

- (NSUInteger)supportedInterfaceOrientations
{
	return [[self topViewController] supportedInterfaceOrientations];
}

@end
