//
//  ViewController.m
//  Esercizio7
//
//  Created by Reginato James on 24/01/17.
//  Copyright © 2017 Reginato James. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    int _timeCount;
    int _timeCountMinutes;
    int _timeCountHours;
    NSTimer *_timer;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated{
    if (_timer == nil) {
        _timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerTick) userInfo:nil repeats:true];
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)timerTick {
    
    _timeCount++;
    
    if(_timeCount == 60){
        _timeCountMinutes++;
        _timeCount = 0;
        [self.timeLabelMinutes setText:[NSString stringWithFormat:@"%i", _timeCountMinutes]];
    }
    
    if(_timeCountMinutes == 60){
        _timeCountHours++;
        _timeCountMinutes = 0;
        [self.timeLabelHours setText:[NSString stringWithFormat:@"%i", _timeCountHours]];
    }
    
    [self.timeLabel setText:[NSString stringWithFormat:@"%i", _timeCount]];
    
}


@end
