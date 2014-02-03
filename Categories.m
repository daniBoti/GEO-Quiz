//
//  Categories.m
//  GEO Quiz
//
//  Created by Dani on 02/02/14.
//  Copyright (c) 2014 Dani Boti. All rights reserved.
//

#import "Categories.h"

@interface Categories ()

@end

@implementation Categories


-(IBAction)ButtonFlags:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setInteger:CategoryFlagsNumber forKey:@"CategorySaved"];
}
-(IBAction)ButtonCapitals:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setInteger:CategoryCapitalsNumber forKey:@"CategorySaved"];
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
    CategoryFlagsNumber     = 1;
    CategoryCapitalsNumber  = 2;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
