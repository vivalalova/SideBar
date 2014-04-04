//
//  loSegue.m
//  photo app
//
//  Created by Lova on 2014/4/1.
//  Copyright (c) 2014年 Lova. All rights reserved.
//

#import "loSegue.h"
#import "LOViewController.h"
@implementation loSegue


- (void)perform {
	LOViewController *mainController = (LOViewController *)self.sourceViewController;
	UIViewController *childController = (UIViewController *)self.destinationViewController;

    //刪除mainController的view中 舊的subview
	for (UIView *view in mainController.placeholder.subviews) {
		[view removeFromSuperview];
	}

    //刪除舊的childViewController 之後加入新的
	if (mainController.childViewControllers.count > 0){
		[mainController.childViewControllers[0] removeFromParentViewController];
    }

    //換成新的
	[mainController.placeholder addSubview:childController.view];
	[mainController addChildViewController:childController];

	mainController.navigationItem.title = childController.navigationItem.title;
}

@end
