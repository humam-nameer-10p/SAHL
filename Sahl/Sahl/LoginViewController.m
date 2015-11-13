//
//  LoginViewController.m
//  Sahl
//
//  Created by Ovais Bawany on 11/12/15.
//  Copyright © 2015 Humam Nameer. All rights reserved.
//

#import "LoginViewController.h"


#define UIColorFromRGB(rgbValue) \
[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0x00FF00) >>  8))/255.0 \
blue:((float)((rgbValue & 0x0000FF) >>  0))/255.0 \
alpha:1.0]

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBar.titleTextAttributes = @{
                                                                    NSFontAttributeName:[UIFont fontWithName:@"HelveticaNeue-Bold" size:15],
                                                                    NSForegroundColorAttributeName: [UIColor whiteColor]
                                                                    };
    UINavigationBar *navBar = [[self navigationController] navigationBar];
    self.navigationItem.title = @"Sign Up / Log In";
    UIImage *backgroundImage = [UIImage imageNamed:@"TopOrangeBar"];
    [navBar setBackgroundImage:backgroundImage forBarMetrics:UIBarMetricsDefault];
    [navBar setBackIndicatorImage:[UIImage imageNamed:@"backBtn"]];
}

-(void)awakeFromNib
{
    
}

-(void)viewWillAppear:(BOOL)animated
{
    UIColor *linkColor = UIColorFromRGB(0xE9513A);
    NSString* text = @"By Signing up, you agree to our Terms of Use and Privacy Policy";
    [self.termsOfUseLabel setText:text afterInheritingLabelAttributesAndConfiguringWithBlock:^(NSMutableAttributedString *mutableAttributedString) {
        NSRange termRange = [text rangeOfString:@"Terms of Use"];
        if (termRange.location != NSNotFound) {
            [mutableAttributedString addAttribute:(NSString *)kCTForegroundColorAttributeName value:(id)linkColor range:termRange];
        }
        
        NSRange privacyRange = [text rangeOfString:@"Privacy Policy"];
        if (privacyRange.location != NSNotFound) {
            [mutableAttributedString addAttribute:(NSString *)kCTForegroundColorAttributeName value:(id)linkColor range:privacyRange];
        }
        return mutableAttributedString;
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
