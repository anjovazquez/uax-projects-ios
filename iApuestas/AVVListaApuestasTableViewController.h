//
//  AVVListaApuestasTableViewController.h
//  iApuestas
//
//  Created by user26505 on 1/24/15.
//  Copyright (c) 2015 user26505. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface AVVListaApuestasTableViewController : UITableViewController

@property (nonatomic) NSMutableArray *apuestas;
@property (nonatomic) NSManagedObjectContext *managedObjectContext;

- (void)reload;
@end
