//
//  ViewController.m
//  Tom猫
//
//  Created by 侯玉昆 on 15/12/10.
//  Copyright © 2015年 侯玉昆. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)clickButton:(id)sender;

- (void)playImage:(NSUInteger)imageNum andImageName:(NSString *)picName;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self playImage:26 andImageName:@"angry"];
}

- (IBAction)clickButton:(UIButton *)sender {
    switch (sender.tag) {
            
            case 0:[self playImage:40 andImageName:@"eat"];break;
            case 1:[self playImage:24 andImageName:@"pie"];break;
            case 2:[self playImage:81 andImageName:@"drink"];break;
            case 3:[self playImage:28 andImageName:@"fart"];break;
            case 4:[self playImage:13 andImageName:@"cymbal"];break;
            case 5:[self playImage:56 andImageName:@"scratch"];break;
            case 6:[self playImage:81 andImageName:@"knockout"];break;
            case 7:[self playImage:34 andImageName:@"stomach"];break;
            case 8:[self playImage:30 andImageName:@"footLeft"];break;
            case 9:[self playImage:30 andImageName:@"footRight"];break;
    }
}
- (void)playImage:(NSUInteger)imageNum andImageName:(NSString *)picName{

    NSMutableArray *array = [NSMutableArray array];
    
    for (int i=0; i<imageNum; i++) {
        
        NSString *imageName = [NSString stringWithFormat:@"%@_%02d",picName,i];
        
        NSString *path = [[NSBundle mainBundle]pathForResource:imageName ofType:@"jpg"];
        
        UIImage *img = [UIImage imageWithContentsOfFile:path];
        
        [array addObject:img];
        
    }
    self.imageView.animationImages = array;
    
    self.imageView.animationDuration = array.count*0.1;
    
    self.imageView.animationRepeatCount =1;
    
    [self.imageView startAnimating];
    
    [self.imageView performSelector:@selector(setAnimationImages:) withObject:nil afterDelay:array.count*0.1];
}
@end
