//
//  ViewController.m
//  TipCalculator
//
//  Created by Thiago Hissa on 2017-07-07.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UITextField *tipPercent;

@property (weak, nonatomic) IBOutlet UILabel *tipResult;

@property (weak, nonatomic) IBOutlet UISlider *sliderValue;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.sliderValue setMinimumValue:0.0];
    [self.sliderValue setMaximumValue:100.0];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)sliderControl:(id)sender {
    self.tipPercent.text = [NSString stringWithFormat:@"%.2f %%", self.sliderValue.value];
}


- (IBAction)calculateTip:(id)sender {
    [self.tipPercent.text stringByReplacingOccurrencesOfString:@"%" withString:@""];
    float tipPercent = [self.tipPercent.text floatValue];
    float tip = [self.billAmountTextField.text floatValue]/100 *tipPercent;
    self.tipResult.text = [NSString stringWithFormat:@"Tip Amount is $ %.2f",tip];
}

@end
