//
//  ViewController.m
//  Esercizio1
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

-(IBAction)nameTextFieldDidEndOnExit:(id)sender{
    NSLog(@"nameTextFieldDidEndOnExit");
}

-(IBAction)nameTextFieldEditingDidEnd:(UITextField *)sender{
    NSLog(@"Nome utente: %@", sender.text);
    [self.nameLabel setText:(sender.text)];
}

@end
