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

-(void)LoadQuestion
{
    if (GameInProgress == NO) {
        LivesNumber = 3;
        ScoreNumber = 0;
        GameInProgress = YES;
    }
    
    Result.hidden = YES;
    Exit.hidden = YES;
    New.hidden = YES;
    
    Lives.text = [NSString stringWithFormat:@"%i", LivesNumber];
    Score.text = [NSString stringWithFormat:@"%i", ScoreNumber];
    
    Answer1Correct = NO;
    Answer2Correct = NO;
    Answer3Correct = NO;
    Answer4Correct = NO;
    
    CategoryLoaded = [[NSUserDefaults standardUserDefaults] integerForKey:@"CategorySaved"];
    //Number of questions
    
    
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
    

}

-(void)RightAnswer
{
    ScoreNumber = ScoreNumber + 10;
    Score.text = [NSString stringWithFormat:@"%i", ScoreNumber];
    New.hidden = NO;
    Answer1.hidden = YES;
    Answer2.hidden = YES;
    Answer3.hidden = YES;
    Answer4.hidden = YES;
    QuestionText.hidden = YES;
    CategorySelected.hidden = YES;
//    Result.hidden = NO;
//    UIColor *color = [UIColor colorWithRed:0.114 green:1 blue:0.114 alpha:1];
//    Result.backgroundColor = color;
    
}

-(void)WrongAnswer
{
    LivesNumber = LivesNumber - 1;
    Lives.text = [NSString stringWithFormat:@"%i", LivesNumber];
    New.hidden = NO;
    Answer1.hidden = YES;
    Answer2.hidden = YES;
    Answer3.hidden = YES;
    Answer4.hidden = YES;
    QuestionText.hidden = YES;
    CategorySelected.hidden = YES;
//    Result.hidden = NO;
//    UIColor *color = [UIColor colorWithRed:1 green:0.114 blue:0.114 alpha:1];
//    Result.backgroundColor = color;
    
    if (LivesNumber == 0) {
        New.hidden = NO;
        Exit.hidden = NO;
        GameInProgress = NO;
    }
    else
    {
//       Call method to new question
    }
    
}

-(IBAction)Answer1:(id)sender
{
    if (Answer1Correct == YES) {
        [self RightAnswer];
    }
    else
    {
        [self WrongAnswer];
    }
}
-(IBAction)Answer2:(id)sender
{
    if (Answer2Correct == YES) {
        [self RightAnswer];
    }
    else
    {
        [self WrongAnswer];
    }
}
-(IBAction)Answer3:(id)sender
{
    if (Answer3Correct == YES) {
        [self RightAnswer];
    }
    else
    {
        [self WrongAnswer];
    }
}
-(IBAction)Answer4:(id)sender
{
    if (Answer4Correct == YES) {
        [self RightAnswer];
    }
    else
    {
        [self WrongAnswer];
    }
}

-(void)CategoryFlags
{
    QuestionSelected = arc4random() %4;
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"SPAIN"];
            [Answer1 setImage:[UIImage imageNamed:@"es.png"] forState:UIControlStateNormal];
            [Answer2 setImage:[UIImage imageNamed:@"ca.png"] forState:UIControlStateNormal];
            [Answer3 setImage:[UIImage imageNamed:@"bt.png"] forState:UIControlStateNormal];
            [Answer4 setImage:[UIImage imageNamed:@"kg.png"] forState:UIControlStateNormal];
//            [Answer1 setTitle:@"Spain" forState:UIControlStateNormal];
//            [Answer2 setTitle:@"Japan" forState:UIControlStateNormal];
//            [Answer3 setTitle:@"Italy" forState:UIControlStateNormal];
//            [Answer4 setTitle:@"Sudan" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"BRAZIL"];
            [Answer1 setImage:[UIImage imageNamed:@"co.png"] forState:UIControlStateNormal];
            [Answer2 setImage:[UIImage imageNamed:@"br.png"] forState:UIControlStateNormal];
            [Answer3 setImage:[UIImage imageNamed:@"kz.png"] forState:UIControlStateNormal];
            [Answer4 setImage:[UIImage imageNamed:@"pt.png"] forState:UIControlStateNormal];
//            [Answer1 setTitle:@"China"  forState:UIControlStateNormal];
//            [Answer2 setTitle:@"Brazil" forState:UIControlStateNormal];
//            [Answer3 setTitle:@"Germany" forState:UIControlStateNormal];
//            [Answer4 setTitle:@"Egypt" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"AUSTRALIA"];
            [Answer1 setImage:[UIImage imageNamed:@"cu.png"] forState:UIControlStateNormal];
            [Answer2 setImage:[UIImage imageNamed:@"ee.png"] forState:UIControlStateNormal];
            [Answer3 setImage:[UIImage imageNamed:@"au.png"] forState:UIControlStateNormal];
            [Answer4 setImage:[UIImage imageNamed:@"ma.png"] forState:UIControlStateNormal];
//            [Answer1 setTitle:@"Madagascar" forState:UIControlStateNormal];
//            [Answer2 setTitle:@"Thailand" forState:UIControlStateNormal];
//            [Answer3 setTitle:@"Australia" forState:UIControlStateNormal];
//            [Answer4 setTitle:@"Argentina" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"CANADA"];
            [Answer1 setImage:[UIImage imageNamed:@"tr.png"] forState:UIControlStateNormal];
            [Answer2 setImage:[UIImage imageNamed:@"ve.png"] forState:UIControlStateNormal];
            [Answer3 setImage:[UIImage imageNamed:@"se.png"] forState:UIControlStateNormal];
            [Answer4 setImage:[UIImage imageNamed:@"ca.png"] forState:UIControlStateNormal];
//            [Answer1 setTitle:@"Mexico" forState:UIControlStateNormal];
//            [Answer2 setTitle:@"Cuba" forState:UIControlStateNormal];
//            [Answer3 setTitle:@"South Korea" forState:UIControlStateNormal];
//            [Answer4 setTitle:@"Canada" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        default:
            break;
    }
}

-(void)CategoryCapitals
{
    QuestionSelected = arc4random() %4;
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
    
//    if (GameInProgress == NO) {
//        LivesNumber = 3;
//        ScoreNumber = 0;
//        GameInProgress = YES;
//    }
//    
//    Result.hidden = YES;
//    Exit.hidden = YES;
//    New.hidden = YES;
//    
//    Lives.text = [NSString stringWithFormat:@"%i", LivesNumber];
//    Score.text = [NSString stringWithFormat:@"%i", ScoreNumber];
//    
//    Answer1Correct = NO;
//    Answer2Correct = NO;
//    Answer3Correct = NO;
//    Answer4Correct = NO;
//    
//    CategoryLoaded = [[NSUserDefaults standardUserDefaults] integerForKey:@"CategorySaved"];
//    //Number of questions
//    
//    
//    switch (CategoryLoaded) {
//        case 1:
//            CategorySelected.text = [NSString stringWithFormat:@"Flags"];
//            [self CategoryFlags];
//            break;
//        case 2:
//            CategorySelected.text = [NSString stringWithFormat:@"Capitals"];
//            [self CategoryCapitals];
//            break;
//        default:
//            break;
//    }
//    
    [super viewDidLoad];
    [self LoadQuestion];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
