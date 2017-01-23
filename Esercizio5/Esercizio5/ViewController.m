//
//  ViewController.m
//  Esercizio5
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

-(void)viewDidAppear:(BOOL)animated{
    NSMutableArray *array = @[].mutableCopy;
    
    [array addObject:@"Freddie Campbell"];
    [array addObject:@"Krista Kim"];
    [array addObject:@"Merle Hubbard"];
    [array addObject:@"Lorraine Weber"];
    [array addObject:@"Lorenzo Greene"];
    
    NSArray *arraySorted = [array sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    NSLog(@"%@", arraySorted);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
