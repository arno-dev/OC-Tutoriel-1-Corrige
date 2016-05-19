//
//  MainControllerViewController.m
//  Tutoriel1
//
//  Created by aphommasone on 27/04/16.
//  Copyright © 2016 OpenClassRoom. All rights reserved.
//

#import "MainControllerViewController.h"
#import "ModalViewController.h"

const NSString * couleurBleu = @"Bleu";
const NSString * couleurRouge = @"Rouge";
const NSString * couleurJaune = @"Jaune";
const NSString * couleurViolet = @"Violet";
const NSString * couleurNoir = @"Noir";

@interface MainControllerViewController () <ChoisirCouleurProtocol>
@property (weak, nonatomic) IBOutlet UIImageView *couleurImageView;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *couleur1Label;
@property (weak, nonatomic) IBOutlet UILabel *couleur2Label;
@property (weak, nonatomic) IBOutlet UILabel *couleur3Label;
@property (weak, nonatomic) IBOutlet UILabel *couleur4Label;
@property (weak, nonatomic) IBOutlet UILabel *couleur5Label;

@end

@implementation MainControllerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NSArray * couleurTableau = [NSArray arrayWithObjects:couleurBleu, couleurRouge, couleurJaune, couleurViolet, couleurNoir, nil];
    
    // TODO : Assigner chaque label a sa couleur correspondante dans le tableau
    for (int i = 0; i < [couleurTableau count]; i++)
    {
        NSString * couleur = [couleurTableau objectAtIndex:i];
        if ([couleur isEqualToString:couleurBleu])
        {
            // Couleur bleu
            [self assignerLabel:self.couleur1Label avecCouleur:[UIColor blueColor] etTexte:[NSString stringWithFormat:@"%i - %@", i+1, couleur]];
        }
        else if ([couleur isEqualToString:couleurRouge])
        {
            // Couleur rouge
            [self assignerLabel:self.couleur2Label avecCouleur:[UIColor redColor] etTexte:[NSString stringWithFormat:@"%i - %@", i+1, couleur]];
        }
        else if ([couleur isEqualToString:couleurJaune])
        {
            // Couleur jaune
            [self assignerLabel:self.couleur3Label avecCouleur:[UIColor yellowColor] etTexte:[NSString stringWithFormat:@"%i - %@", i+1, couleur]];
        }
        else if ([couleur isEqualToString:couleurViolet])
        {
            // Couleur violet
            [self assignerLabel:self.couleur4Label avecCouleur:[UIColor purpleColor] etTexte:[NSString stringWithFormat:@"%i - %@", i+1, couleur]];
        }
        else if ([couleur isEqualToString:couleurNoir])
        {
            // Couleur noire
            [self assignerLabel:self.couleur5Label avecCouleur:[UIColor blackColor] etTexte:[NSString stringWithFormat:@"%i - %@", i+1, couleur]];
        }
    }
}

- (void) assignerLabel:(UILabel *)label avecCouleur:(UIColor *)couleur etTexte:(NSString *)texte
{
    label.textColor = couleur;
    label.text = texte;
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
- (IBAction)choisirCouleurAction:(id)sender {
    ModalViewController * modalVC = [[ModalViewController alloc] initWithNibName:@"ModalViewController" bundle:nil];
    modalVC.delegate = self;
    [self presentViewController:modalVC animated:YES completion:nil];
}

- (void)aChoisiCouleur:(NSString *)couleur
{
    NSLog(@"Notre vue B a choisi : %@", couleur);
    
    if ([couleur isEqualToString:couleurBleu])
    {
        self.couleurImageView.backgroundColor = [UIColor blueColor];
    }
    else if ([couleur isEqualToString:couleurRouge])
    {
        self.couleurImageView.backgroundColor = [UIColor redColor];
    }
    else if ([couleur isEqualToString:couleurJaune])
    {
        self.couleurImageView.backgroundColor = [UIColor yellowColor];
    }
    else if ([couleur isEqualToString:couleurViolet])
    {
        self.couleurImageView.backgroundColor = [UIColor purpleColor];
    }
    else if ([couleur isEqualToString:couleurNoir])
    {
        self.couleurImageView.backgroundColor = [UIColor blackColor];
    }

    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
