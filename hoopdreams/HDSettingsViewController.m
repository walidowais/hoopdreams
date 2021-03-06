//
//  HDSettingsViewController.m
//  hoopdreams
//
//  Created by Walid on 10/21/14.
//  Copyright (c) 2014 CS378Group6. All rights reserved.
//

#import "HDSettingsViewController.h"

@interface HDSettingsViewController ()

@end

@implementation HDSettingsViewController

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
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    HDAppDelegate *delegate = [[UIApplication sharedApplication] delegate];
    
    self.gameSize.selectedSegmentIndex = delegate.settingSpots;
    self.distanceSlider.value = delegate.settingDistance;
    self.distanceLabel.text = [NSString stringWithFormat:@"%d miles", (int)self.distanceSlider.value];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)distanceValueChanged:(id)sender {
    self.distanceLabel.text = [NSString stringWithFormat:@"%d miles", (int)self.distanceSlider.value];
}

- (IBAction)donePressed:(id)sender {
    HDAppDelegate *delegate = [[UIApplication sharedApplication] delegate];
    
    delegate.settingDistance = self.distanceSlider.value;
    delegate.settingSpots = self.gameSize.selectedSegmentIndex;
    
    [self.navigationController popViewControllerAnimated:YES];
}


@end
