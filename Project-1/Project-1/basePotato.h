//
//  basePotato.h
//  Project-1
//
//  Created by Andrew Phillips on 10/25/12.
//  Copyright (c) 2012 Andrew Phillips. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface basePotato : NSObject
{
    int potatoEnum;
}

typedef enum {
    CHIPS,
    MASHED,
    GUN,
} potatoEnum;


@property int *howManyPotatoes;
@property NSString *whichPotatoType;
@property NSString *whatWillIDoWithPotatoes;

-(id)init;

-(void)calculateRateOfFire;



@end
