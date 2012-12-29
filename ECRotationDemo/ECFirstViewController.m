//
//  ECFirstViewController.m
//  ECRotationDemo
//
//  Created by Chris Stroud on 12/28/12.
//  Copyright (c) 2012 Elevé Creations. All rights reserved.
//

#import "ECFirstViewController.h"
#import "ECWebDetailViewController.h"

@implementation ECFirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
		self.title = NSLocalizedString(@"First", @"First");
		self.navigationItem.title = self.title;
		self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
	return UIInterfaceOrientationIsPortrait(toInterfaceOrientation);
}

- (NSUInteger)supportedInterfaceOrientations
{
	return UIInterfaceOrientationMaskPortrait;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	NSString *identifier = @"Cell_Identifier";
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];

	if(!cell){
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
	}

	cell.textLabel.text = [NSString stringWithFormat:@"VC 1 Cell %d", indexPath.row];

	return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return 10;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return 1;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	[tableView deselectRowAtIndexPath:indexPath animated:YES];
	
	ECWebDetailViewController *webController = [[ECWebDetailViewController alloc] initWithNibName:NSStringFromClass([ECWebDetailViewController class]) bundle:nil];

	[[self navigationController] pushViewController:webController animated:YES];

	[webController setURL:[NSURL URLWithString:@"http://www.google.com"]];	
}

@end
