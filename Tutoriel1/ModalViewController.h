//
//  ModalViewController.h
//  Tutoriel1
//
//  Created by aphommasone on 10/05/16.
//  Copyright © 2016 OpenClassRoom. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ChoisirCouleurProtocol;

@interface ModalViewController : UIViewController
@property (nonatomic, weak) id <ChoisirCouleurProtocol> delegate;
@end

@protocol ChoisirCouleurProtocol <NSObject>
@required
- (void)aChoisiCouleur:(NSString *)couleur;
@end