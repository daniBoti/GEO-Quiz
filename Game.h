//
//  Game.h
//  GEO Quiz
//
//  Created by Dani on 03/02/14.
//  Copyright (c) 2014 Dani Boti. All rights reserved.
//

#import <UIKit/UIKit.h>

int CategoryLoaded;
int QuestionSelected;
BOOL Answer1Correct;
BOOL Answer2Correct;
BOOL Answer3Correct;
BOOL Answer4Correct;

@interface Game : UIViewController
{
    IBOutlet UILabel *CategorySelected;
    IBOutlet UILabel *QuestionText;
    IBOutlet UIButton *Answer1;
    IBOutlet UIButton *Answer2;
    IBOutlet UIButton *Answer3;
    IBOutlet UIButton *Answer4;
}

-(IBAction)Answer1:(id)sender;
-(IBAction)Answer2:(id)sender;
-(IBAction)Answer3:(id)sender;
-(IBAction)Answer4:(id)sender;
-(void)CategoryFlags;
-(void)CategoryCapitals;

@end
