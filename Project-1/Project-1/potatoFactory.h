//
//  potatoFactory.h
//  Project-1
//
//  Created by Andrew Phillips on 10/25/12.
//  Copyright (c) 2012 Andrew Phillips. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "basePotato.h"
#import "makeChips.h"
#import "makeMashed.h"
#import "makeGun.h"

@interface potatoFactory : NSObject


+(basePotato *)createNewPotatoThing: (int)potatoType;

@end
