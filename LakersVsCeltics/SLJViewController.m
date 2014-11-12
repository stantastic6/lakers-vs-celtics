//
//  SLJViewController.m
//  LakersVsCeltics
//
//  Created by Stanley Jackson on 9/8/14.
//  Copyright (c) 2014 Stanley Jackson. All rights reserved.
//

#import "SLJViewController.h"

@interface SLJViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextView *messageLabel;
@property (strong, nonatomic) IBOutlet UIView *background;
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;

@end

@implementation SLJViewController
- (IBAction)buttonTouched:(id)sender {
    NSString *msg = nil;
    
    // Check for an empty textField
    if ([self.nameTextField.text isEqual: @""]) {
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Error!"
                              message:@"You must enter a name."
                              delegate:self
                              cancelButtonTitle:@"Okay!"
                              otherButtonTitles: nil];
        [alert show];
    }else{
        
        //if textField isn't empty, proceed based on the button pressed
        switch ([sender tag]) {
            case 0:
                msg = [NSString stringWithFormat:@"Great choice, %@! Boston may also have a storied history, but how could you not love Magic Johnson!?!?", self.nameTextField.text];
                self.messageLabel.text = msg;
                self.background.backgroundColor = [UIColor colorWithRed:0.4 green:0 blue:0.4 alpha:1];
                break;
            case 1:
                msg = [NSString stringWithFormat:@"We're all entitled to our opinions, %@! I suppose you can't go wrong with Larry Bird and Bill Russell.", self.nameTextField.text];
                self.messageLabel.text = msg;
                self.background.backgroundColor = [UIColor colorWithRed:0 green:0.4 blue:0 alpha:1];
            default:
                break;
        }
    }
    
}

- (IBAction)dismissKeyboard:(id)sender {
    [sender resignFirstResponder];
}

- (IBAction)backgroundTouched:(id)sender {
    [self.nameTextField resignFirstResponder];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
