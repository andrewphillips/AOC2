//
//  makeGun.m
//  Project-1
//
//  Created by Andrew Phillips on 10/25/12.
//  Copyright (c) 2012 Andrew Phillips. All rights reserved.
//

#import "makeGun.h"

@implementation makeGun


@synthesize howManyPotatoes, extraThatCanBeCramedInBarrel, potatoesThatFit;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setHowManyPotatoes:100];
        [self setPotatoesThatFit:4.2];
        [self setExtraThatCanBeCramedInBarrel:2];
        NSLog(@"Let's get this potato gun ready to fire");
    }
    return self;
}

-(void)calculateRateOfFire
{
    [self setHowManyPotatoes:(howManyPotatoes * (potatoesThatFit / extraThatCanBeCramedInBarrel))];
    NSLog(@"There's %i potato-pieces in the cannon.  Fire at will!", self.howManyPotatoes);
}




@end
