//
//  ViewController.m
//  ImageGallery
//
//  Created by Auston Salvana on 7/14/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic) CGSize scrollViewSize;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.scrollViewSize = self.view.frame.size;
    self.redWidth.constant = self.scrollViewSize.width;
    self.redHeight.constant = self.scrollViewSize.height;
    //scrollView is not resizing for some reason so i set self.scrollViewSize to self.view.frame.size
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





@end
