//
//  ModalViewController.m
//  Tutoriel1
//
//  Created by aphommasone on 10/05/16.
//  Copyright © 2016 OpenClassRoom. All rights reserved.
//

#import "ModalViewController.h"
#import "MainControllerViewController.h"

@interface ModalViewController ()

@end

@implementation ModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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


- (IBAction)btnAction:(id)sender {
    UIButton * bouton = (UIButton *)sender;
    if ([self.delegate respondsToSelector:@selector(aChoisiCouleur:)])
    {
        switch (bouton.tag) {
            case 1:
                [self.delegate aChoisiCouleur:@"Bleu"];
                break;
            case 2:
                [self.delegate aChoisiCouleur:@"Rouge"];
                break;
            case 3:
                [self.delegate aChoisiCouleur:@"Jaune"];
                break;
            case 4:
                [self.delegate aChoisiCouleur:@"Violet"];
                break;
            case 5:
                [self.delegate aChoisiCouleur:@"Noir"];
                break;
            default:
                break;
        }
    }
}

@end
