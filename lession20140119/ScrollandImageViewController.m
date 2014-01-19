//
//  ScrollandImageViewController.m
//  lession20140119
//
//  Created by Hiep Huynh on 11/26/2014.
//  Copyright (c) 2014 Hiep Huynh. All rights reserved.
//

#import "ScrollandImageViewController.h"

@interface ScrollandImageViewController ()

@end

@implementation ScrollandImageViewController
@synthesize myscroll,scrolltoX,scrolltoY,zoomtoX,zoomtoY;
- (void)viewDidLoad
{
    [super viewDidLoad];
 
    UIImageView *myimage=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"baby.jpg"]];
    // myimage.userInteractionEnabled=YES;xcode 5 tro len thi ko can set
    [myscroll addSubview:myimage];
    myscroll.contentSize= CGSizeMake(myimage.image.size.width, myimage.image.size.height);
    myscroll.minimumZoomScale=0.000001;
    myscroll.maximumZoomScale=100000.0;
    //NSLo)
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return scrollView.subviews[0];
}
- (IBAction)ZoomImage:(id)sender {
    [myscroll setZoomScale:[zoomtoX.text floatValue]];
}
- (IBAction)ScrollImage:(id)sender {
    //[myscroll setScrollIndicatorInsets:nil];
    [myscroll scrollRectToVisible:CGRectMake([scrolltoX.text floatValue], [scrolltoY.text floatValue], 50.0, 50.0) animated:TRUE];
    
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

@end
