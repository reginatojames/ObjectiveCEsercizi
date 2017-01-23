//
//  ViewController.m
//  Esercizio3
//
//  Created by Reginato James on 23/01/17.
//  Copyright © 2017 Reginato James. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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

-(IBAction)buttonPressed:(id)sender{
    int n = [self getRandomNumberBetween:(1) to:(100)];
    [self.displayedNumberLabel setText:[NSString stringWithFormat:@"%i", n]];
    
    NSString *alertMessage = [NSString stringWithFormat:@"Il numero %i è pari?", n];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Test" message:alertMessage
    preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *siAction = [UIAlertAction actionWithTitle:@"SI" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action){
        if(n%2 == 0){
            [self.displayedNumberLabel setText:@"ESATTO!"];
        }else{
            [self.displayedNumberLabel setText:@"ERRATO!"];
        }
    }];
    
    UIAlertAction *noAction = [UIAlertAction actionWithTitle:@"NO" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action){
        if(n%2 == 0){
            [self.displayedNumberLabel setText:@"ERRATO!"];
        }else{
            [self.displayedNumberLabel setText:@"ESATTO!"];
        }
    }];

    
    [alert addAction:siAction];
    [alert addAction:noAction];
    [self presentViewController:alert animated:true completion:nil];
}
-(int)getRandomNumberBetween:(int) from to : (int)to{
    return (int)from + arc4random() % (to - from+1);
}

@end
