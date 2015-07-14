//
//  DetailViewController.h
//  ImageGallery
//
//  Created by Auston Salvana on 7/14/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *DetailImage;
@property (nonatomic) UIImage *imageHolder;

@end
