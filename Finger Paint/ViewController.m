//
//  ViewController.m
//  Finger Paint
//
//  Created by Yilei Huang on 2019-01-18.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import "ViewController.h"
#import "Draw.h"

@interface ViewController () <UITextFieldDelegate>
//@property (weak, nonatomic)  UISlider *rColor;
//@property (weak, nonatomic)  UISlider *gColor;
//@property (weak, nonatomic)  UISlider *bColor;
@property (weak, nonatomic) IBOutlet UIView *colorView;
@property (weak, nonatomic) IBOutlet Draw *paintView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)clearButton:(id)sender {
    [self.paintView clear];
}
- (IBAction)rColor:(UISlider *)sender {
    sender.maximumValue =255;
    self.paintView.rColor =sender.value;

    [self colorViewChange];
}

- (IBAction)gColor:(UISlider *)sender {
    //UIColor *color = [UIColor colorWithHue:self.gColor.value saturation:1.0 brightness:1.0 alpha:1.0];
    //sender.backgroundColor = color;

    sender.maximumValue =255;
    self.paintView.gColor= sender.value;
    [self colorViewChange];
}

- (IBAction)bColor:(UISlider *)sender {
    sender.maximumValue =255;

    self.paintView.bColor = sender.value;
    [self colorViewChange];
}
-(void)colorViewChange{
    self.colorView.backgroundColor = [UIColor colorWithRed:self.paintView.rColor /255.0 green:self.paintView.gColor /255.0 blue:self.paintView.bColor/255.0 alpha:1.0];
    
}



@end
