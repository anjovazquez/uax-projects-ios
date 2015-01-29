//
//  AVVApuestaNuevaControllerViewController.m
//  iApuestas
//
//  Created by user26505 on 1/24/15.
//  Copyright (c) 2015 user26505. All rights reserved.
//

#import "AVVApuestaNuevaControllerViewController.h"
#import "AppDelegate.h"
#import "AVVListaApuestasTableViewController.h"
#import "AVVApuestaParticipante.h"

@interface AVVApuestaNuevaControllerViewController ()
@property (weak) IBOutlet UIButton *bWin;
@property (weak) IBOutlet UIButton *bLose;
@property (weak) IBOutlet UIButton *bDraw;

@property (weak) IBOutlet UITextField *bName;


@end

@implementation AVVApuestaNuevaControllerViewController

@synthesize delegate;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)pickApuesta:(UIButton *)sender {
    NSString *name = _bName.text;
    
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    //anadimos la nueva apuesta
    AVVApuestaParticipante *a1 = [NSEntityDescription insertNewObjectForEntityForName:@"ApuestaParticipante" inManagedObjectContext:[appDelegate managedObjectContext]];
    a1.name = name;
    NSString *apName = [sender currentTitle];
    a1.apuesta = apName;
    
    [appDelegate saveContext];
    
    //Recargamos la vista llamando al delegado
    //Call delegate
    [self.delegate reload];
    
    //volvemos a la anterior
    [self.navigationController popViewControllerAnimated:YES];
    
    
   }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Implementar el delegado
- (void) callListDelegate{
    
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
