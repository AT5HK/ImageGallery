//
//  ViewController.h
//  ImageGallery
//
//  Created by Auston Salvana on 7/14/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *redHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *redWidth;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;

@end

