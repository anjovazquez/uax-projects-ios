//
//  AVVApuestaParticipante.h
//  iApuestas
//
//  Created by Angel Vazquez on 28/1/15.
//  Copyright (c) 2015 user26505. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface AVVApuestaParticipante : NSManagedObject

@property (nonatomic, retain) NSString * apuesta;
@property (nonatomic, retain) NSString * name;

@end
