//
//  ScrollandImageViewController.h
//  lession20140119
//
//  Created by Hiep Huynh on 11/26/2014.
//  Copyright (c) 2014 Hiep Huynh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScrollandImageViewController : UIViewController

//@property (strong, nonatomic) IBOutlet UIImageView *myimage;
@property (strong, nonatomic) IBOutlet UIScrollView *myscroll;
@property (strong, nonatomic) IBOutlet UITextField *scrolltoX;
@property (strong, nonatomic) IBOutlet UITextField *scrolltoY;
@property (strong, nonatomic) IBOutlet UITextField *zoomtoX;
@property (strong, nonatomic) IBOutlet UITextField *zoomtoY;

@end
