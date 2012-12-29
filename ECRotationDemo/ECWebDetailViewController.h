//
//  ECWebDetailViewController.h
//  ECRotationDemo
//
//  Created by Chris Stroud on 12/28/12.
//  Copyright (c) 2012 Elevé Creations. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ECWebDetailViewController : UIViewController

@property IBOutlet UIWebView *webView;

- (void)setURL:(NSURL *)aUrl;

@end
