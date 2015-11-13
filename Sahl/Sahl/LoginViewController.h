//
//  LoginViewController.h
//  Sahl
//
//  Created by Ovais Bawany on 11/12/15.
//  Copyright © 2015 Humam Nameer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TTTAttributedLabel.h"

@interface LoginViewController : UIViewController<TTTAttributedLabelDelegate>

@property (weak, nonatomic) IBOutlet TTTAttributedLabel *termsOfUseLabel;

@end
