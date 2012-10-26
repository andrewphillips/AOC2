//
//  makeMashed.h
//  Project-1
//
//  Created by Andrew Phillips on 10/25/12.
//  Copyright (c) 2012 Andrew Phillips. All rights reserved.
//

#import "basePotato.h"

@interface makeMashed : basePotato

{
    int levelOfButter;
}

typedef enum {
    LIGHT,
    NORMAL,
    HEAVY,
} levelOfButter;


@property int butterSticks;
@property float levelOfGooey;
@property NSString *declarationOfDeliciousness;


@end
