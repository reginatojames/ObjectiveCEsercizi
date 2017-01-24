//
//  ViewController.h
//  Esercizio6
//
//  Created by Reginato James on 24/01/17.
//  Copyright © 2017 Reginato James. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(nonatomic, weak) IBOutlet UITextField *nameTextView;
@property(nonatomic, weak) IBOutlet UITextField *surnameTextView;
@property(nonatomic, weak) IBOutlet UITextField *ageTextView;

-(IBAction)buttonPressed:(id)sender;

@end

