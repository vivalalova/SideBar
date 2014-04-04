//
//  LOViewController.m
//  SideBar
//
//  Created by Lova on 2014/4/4.
//  Copyright (c) 2014年 Lova. All rights reserved.
//

#import "LOViewController.h"

@interface LOViewController ()

@property (weak, nonatomic) IBOutlet UIView *viewForMenu;
@end

@implementation LOViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    [self performSegueWithIdentifier:@"ASegue" sender:nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#define kXForViewForMenuToHide -220
#define kXForViewForMenuToShow 0

- (IBAction)sideBarBTN:(UIBarButtonItem *)sender {
	if (self.viewForMenu.frame.origin.x == kXForViewForMenuToHide) {
		[UIView animateWithDuration:0.2 animations: ^{
		    self.viewForMenu.frame = CGRectMake(kXForViewForMenuToShow,
		                                        CGRectGetMinY(self.viewForMenu.frame),
		                                        CGRectGetWidth(self.viewForMenu.frame),
		                                        CGRectGetHeight(self.viewForMenu.frame));
		}];
	}
	else {
		[UIView animateWithDuration:0.2 animations: ^{
		    self.viewForMenu.frame = CGRectMake(kXForViewForMenuToHide,
		                                        CGRectGetMinY(self.viewForMenu.frame),
		                                        CGRectGetWidth(self.viewForMenu.frame),
		                                        CGRectGetHeight(self.viewForMenu.frame));
		}];
	}
}

- (IBAction)didPressedSideBarBTN:(UIButton *)sender {
	[self sideBarBTN:nil];
}
@end
