//
//  MainControllerViewController.h
//  Tutoriel1
//
//  Created by aphommasone on 27/04/16.
//  Copyright © 2016 OpenClassRoom. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ModalViewController;

@interface MainControllerViewController : UIViewController
@property (nonatomic, strong) ModalViewController * pointeurB;

- (void)aChoisiCouleur:(NSString *)couleur;

@end
