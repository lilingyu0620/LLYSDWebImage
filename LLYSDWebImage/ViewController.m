//
//  ViewController.m
//  LLYSDWebImage
//
//  Created by lly on 2018/6/17.
//  Copyright © 2018 lly. All rights reserved.
//

#import "ViewController.h"
#import "SDWebImage/SDWebImageDownloader.h"

static NSString const * kTestUrl = @"http://open-image.nosdn1.127.net/0fe8cbb172dd4f92a855e595de7026e6.jpg";

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    SDWebImageDownloadToken *token = [[SDWebImageDownloader sharedDownloader] downloadImageWithURL:[NSURL URLWithString:kTestUrl] options:SDWebImageDownloaderUseNSURLCache progress:^(NSInteger receivedSize, NSInteger expectedSize, NSURL * _Nullable targetURL) {
        NSLog(@"SDWebImageDownloader receivedSize");
    } completed:^(UIImage * _Nullable image, NSData * _Nullable data, NSError * _Nullable error, BOOL finished) {
        NSLog(@"image");
    }];
}


@end
