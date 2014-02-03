//
//  Game.m
//  GEO Quiz
//
//  Created by Dani on 03/02/14.
//  Copyright (c) 2014 Dani Boti. All rights reserved.
//

#import "Game.h"

@interface Game ()

@end

@implementation Game

-(IBAction)Answer1:(id)sender
{
}
-(IBAction)Answer2:(id)sender
{
}
-(IBAction)Answer3:(id)sender
{
}
-(IBAction)Answer4:(id)sender
{
}

-(void)CategoryFlags
{
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"SPAIN"];
            [Answer1 setTitle:@"Spain" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Japan" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Italy" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Sudan" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"BRAZIL"];
            [Answer1 setTitle:@"China"  forState:UIControlStateNormal];
            [Answer2 setTitle:@"Brazil" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Germany" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Egypt" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"AUSTRALIA"];
            [Answer1 setTitle:@"Madagascar" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Thailand" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Australia" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Argentina" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"CANADA"];
            [Answer1 setTitle:@"Mexico" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Cuba" forState:UIControlStateNormal];
            [Answer3 setTitle:@"South Korea" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Canada" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        default:
            break;
    }
}

-(void)CategoryCapitals
{
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"SPAIN"];
            [Answer1 setTitle:@"Madrid" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Paris" forState:UIControlStateNormal];
            [Answer3 setTitle:@"London" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Rome" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"BRAZIL"];
            [Answer1 setTitle:@"China"  forState:UIControlStateNormal];
            [Answer2 setTitle:@"Brasilian" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Germany" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Egypt" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"AUSTRALIA"];
            [Answer1 setTitle:@"Toronto" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Melbourn" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Camberra" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Sydney" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"CANADA"];
            [Answer1 setTitle:@"Mexico" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Cuba" forState:UIControlStateNormal];
            [Answer3 setTitle:@"South Korea" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Toronto" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        default:
            break;
    }
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    Answer1Correct = NO;
    Answer2Correct = NO;
    Answer3Correct = NO;
    Answer4Correct = NO;
    
    CategoryLoaded = [[NSUserDefaults standardUserDefaults] integerForKey:@"CategorySaved"];
    //Number of questions
    QuestionSelected = arc4random() %4;
    
    switch (CategoryLoaded) {
        case 1:
            CategorySelected.text = [NSString stringWithFormat:@"Flags"];
            [self CategoryFlags];
            break;
        case 2:
            CategorySelected.text = [NSString stringWithFormat:@"Capitals"];
            [self CategoryCapitals];
            break;
        default:
            break;
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
