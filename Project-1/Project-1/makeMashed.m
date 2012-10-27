//
//  makeMashed.m
//  Project-1
//
//  Created by Andrew Phillips on 10/25/12.
//  Copyright (c) 2012 Andrew Phillips. All rights reserved.
//

#import "makeMashed.h"

@implementation makeMashed

@synthesize howManyPotatoes, butterSticks, levelOfGooey, declarationOfDeliciousness;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setHowManyPotatoes:200];
        [self setButterSticks:10];
        [self setLevelOfGooey:0];
        [self setDeclarationOfDeliciousness:@""];
        NSLog(@"These are the best mashed potatoes ever!  I shall not load them in the potato gun, but eat them!");
    }
    return self;
}
-(void)calculateRateOfFire
{
    if (levelOfButter == LIGHT){
        [self setHowManyPotatoes:(howManyPotatoes + 1 + (butterSticks * 20 - levelOfGooey))];
    } else if (levelOfButter == NORMAL){
        [self setHowManyPotatoes:(howManyPotatoes - 1 + (butterSticks * 1 - levelOfGooey))];
    } else if (levelOfButter == HEAVY){
        [self setHowManyPotatoes:(howManyPotatoes + 10 - (butterSticks * 1 - levelOfGooey))];
    } else {
    NSLog(@"These potatoes are too amazing!  Yet, we still need ammo");
    }


NSLog(@"I now know that there are %i lbs. of mashed potatoes, and we have plenty of ammo now.", self.howManyPotatoes);

}

@end
