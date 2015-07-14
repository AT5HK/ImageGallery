//
//  ViewController.m
//  ImageGallery
//
//  Created by Auston Salvana on 7/14/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()
@property (nonatomic) CGSize scrollViewSize;
@property (nonatomic) UIImage *storeImage;
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

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"DetailViewController"]) {
        DetailViewController *detailViewController = segue.destinationViewController;
        detailViewController.imageHolder = self.storeImage;
    }
}

- (IBAction)showDetailView:(id)sender {
    UITapGestureRecognizer *tap = sender;
    CGPoint point = [tap locationInView:self.scrollView];
    for (UIView *view in self.scrollView.subviews)
    {
        if ([view isKindOfClass:[UIImageView class]] && CGRectContainsPoint(view.frame, point))
        {
            UIImageView *imageView = (UIImageView*)view;
            self.storeImage = imageView.image;
            [self performSegueWithIdentifier:@"DetailViewController" sender:nil];
        }
    }
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if (scrollView.contentOffset.x < self.view.frame.size.width) {
        self.pageControl.currentPage = 0;
    }
    else if (scrollView.contentOffset.x < self.view.frame.size.width*2) {
        self.pageControl.currentPage = 1;
    }
    else {
        self.pageControl.currentPage = 2;
    }
}


@end
