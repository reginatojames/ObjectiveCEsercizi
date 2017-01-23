//
//  ViewController.h
//  Esercizio1
//
//  Created by Reginato James on 23/01/17.
//  Copyright © 2017 Reginato James. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *nameTextField;
@property (nonatomic, weak) IBOutlet UILabel *nameLabel;

-(IBAction)nameTextFieldDidEndOnExit:(id)sender;
-(IBAction)nameTextFieldEditingDidEnd:(id)sender;


@end

