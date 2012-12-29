//
//  ECWebDetailViewController.m
//  ECRotationDemo
//
//  Created by Chris Stroud on 12/28/12.
//  Copyright (c) 2012 Elevé Creations. All rights reserved.
//

#import "ECWebDetailViewController.h"

@implementation ECWebDetailViewController

- (NSString *)title
{
	return @"Web View";
}

- (void)setURL:(NSURL *)aUrl
{
	[_webView loadRequest:[NSURLRequest requestWithURL:aUrl]];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
	return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
	return UIInterfaceOrientationMaskAllButUpsideDown;
}

@end
