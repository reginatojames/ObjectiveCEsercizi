//
//  ViewController.m
//  Esercizio2
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

-(IBAction)numberTextFieldDidEndOnExit:(id)sender{
    
}

-(IBAction)numberTextFieldEditingDidEnd:(UITextField *)sender{
    int number = sender.text.intValue;
    if(number%2 == 0){
        NSLog(@"Numero inserito %d pari", number);
    }else{
        NSLog(@"Numero inserito %d dispari", number);
    }
}

@end
