//
//  Categories.h
//  GEO Quiz
//
//  Created by Dani on 02/02/14.
//  Copyright (c) 2014 Dani Boti. All rights reserved.
//

#import <UIKit/UIKit.h>

int CategoryFlagsNumber;
int CategoryCapitalsNumber;

@interface Categories : UIViewController
{
    IBOutlet UIButton *CategoryFlags;
    IBOutlet UIButton *CategoryCapitals;
}

-(IBAction)ButtonFlags:(id)sender;
-(IBAction)ButtonCapitals:(id)sender;

@end
