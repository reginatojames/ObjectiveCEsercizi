//
//  ViewController.m
//  Esercizio4
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
    for(int i = 0; i < 100; i++){
        [array addObject:@([self getRandomNumberBetween:(0) to:(100)])];
    }
    
    int sum = 0;
    for(int j = 0; j < 100; j++){
        sum = sum + [array[j] intValue];
    }
    
    [self.sumResultLabel setText:[NSString stringWithFormat:@"%i", sum]];
    NSLog(@"RESULT SOMMA= %i", sum);
    
    NSArray *sorted = [array sortedArrayUsingSelector:@selector(compare:)];
    NSLog(@"CRESCENTE= %@", sorted);
    sorted = [[[array sortedArrayUsingSelector:@selector(compare:)] reverseObjectEnumerator] allObjects];
    NSLog(@"DECRESCENTE= %@", sorted);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(int)getRandomNumberBetween:(int) from to : (int)to{
    return (int)from + arc4random() % (to - from+1);
}


@end
