//
//  ViewController.m
//  HeyUnitTest
//
//  Created by Roy on 2017/11/13.
//  Copyright © 2017年 roy. All rights reserved.
//

#import "ViewController.h"
#import "AnswerViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *weightTF;
@property (weak, nonatomic) IBOutlet UITextField *heightTF;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - method for unit test

/**
 calculate sum of two numbers

 @param num1 : first number
 @param num2 : second number
 @return : sum of two numbers
 */
- (NSInteger)plusNumber:(NSInteger)num1 num2:(NSInteger)num2 {
    
    return num1 + num2;
}

// shift + option + /
/**
 calculate BMI

 @param height height(cm)
 @param weight weight(kg)
 @return BMI
 */
- (double)calculateBMI:(double)height weight:(double)weight {
    double heightM = height / 100.0;
    double BMI = weight / (heightM * heightM);
    NSString *BMIstr = [NSString stringWithFormat:@"%.2f", BMI];
    return BMIstr.doubleValue;
}

#pragma mark - Button Action
- (IBAction)calculateBtnClick:(id)sender {
    double weight = self.weightTF.text.doubleValue;
    double height = self.heightTF.text.doubleValue;
    double answer = [self calculateBMI:height weight:weight];
    
    AnswerViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"AnswerViewController"];
    vc.answer = answer;
    [self showViewController:vc sender:nil];
}

@end
