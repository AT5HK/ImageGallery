//
//  ViewController.m
//  ImageGallery
//
//  Created by Auston Salvana on 7/14/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic) CGSize screenSize;
@end

@implementation ViewController

- (void)viewDidLoad {
    self.screenSize = self.view.frame.size;
    [super viewDidLoad];
//    self.scrollView.translatesAutoresizingMaskIntoConstraints = YES;
    self.scrollView.contentSize = CGSizeMake((self.view.frame.size.width * 3), 0);
    [self createImageViews];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - helper methods

-(void)createImageViews {
    UIImageView *imageView1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.screenSize.width, self.screenSize.height)];
    UIImageView *imageView2 = [[UIImageView alloc]initWithFrame:CGRectMake((self.screenSize.width), 0,self.screenSize.width, self.screenSize.height)];
    UIImageView *imageView3 = [[UIImageView alloc]initWithFrame:CGRectMake((self.screenSize.width*2), 0,self.screenSize.width, self.screenSize.height)];
    
    imageView1.backgroundColor = [UIColor redColor];
    imageView2.backgroundColor = [UIColor blueColor];
    imageView3.backgroundColor = [UIColor greenColor];
    
    [self.scrollView addSubview:imageView1];
    [self.scrollView addSubview:imageView2];
    [self.scrollView addSubview:imageView3];
}

@end
