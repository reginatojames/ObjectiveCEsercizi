//
//  ViewController.h
//  Esercizio2
//
//  Created by Reginato James on 23/01/17.
//  Copyright © 2017 Reginato James. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *numberTextField;

-(IBAction)numberTextFieldDidEndOnExit:(id)sender;
-(IBAction)numberTextFieldEditingDidEnd:(id)sender;


@end

