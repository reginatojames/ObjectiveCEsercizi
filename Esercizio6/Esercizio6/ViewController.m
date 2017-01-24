//
//  ViewController.m
//  Esercizio6
//
//  Created by Reginato James on 24/01/17.
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
    if(_nameTextView.text.length > 0 && _surnameTextView.text.length > 0 &&_ageTextView.text.length > 0){
        NSLog(@"NOME=%@ COGNOME=%@ ETA'=%@", _nameTextView.text, _surnameTextView.text, _ageTextView.text);
    }else{
        NSLog(@"Completare tutti i campi!");
    }
}

@end
