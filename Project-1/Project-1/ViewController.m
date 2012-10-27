//
//  ViewController.m
//  Project-1
//
//  Created by Andrew Phillips on 10/25/12.
//  Copyright (c) 2012 Andrew Phillips. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //set the background color
    self.view.backgroundColor = [UIColor colorWithWhite:0.325 alpha:0.725];
    
    
    //Use chips in the potato gun!
    makeChips *createChips = (makeChips *)[potatoFactory createNewPotatoThing:CHIPS];
    [createChips setHowManyMashers:20];
    
    if (createChips != nil)
    {
        NSString *potatoGunChips = @"Long Ranged Potato Gun";
        [createChips setWhichPotatoType:potatoGunChips];
        
        NSString *howWillChipsFire = @"This type of ammo was a terrible idea for long range; chips seem to work fine for short range";
        [createChips setWhatWillIDoWithPotatoes:howWillChipsFire];
        
        [createChips calculateRateOfFire];
    }
    
    potatoChipsLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 5, 300, 80)];
    potatoChipsLabel.text = [NSString stringWithFormat:@"Time to make a potato gun with chips! This one will be a %@.  %@.", [createChips whichPotatoType], [createChips whatWillIDoWithPotatoes]];
    potatoChipsLabel.textAlignment = NSTextAlignmentCenter;
    potatoChipsLabel.font = [UIFont systemFontOfSize:14.0];
    potatoChipsLabel.numberOfLines = 5;
    potatoChipsLabel.textColor = [UIColor whiteColor];
    potatoChipsLabel.backgroundColor = [UIColor colorWithRed:0.2 green:0.4 blue:0.8 alpha:1]; /*#3366cc*/
    [self.view addSubview:potatoChipsLabel];
    
    potatoChipsLabel2nd = [[UILabel alloc]initWithFrame:CGRectMake(10, 95, 300, 80)];
    potatoChipsLabel2nd.text = [NSString stringWithFormat:@"The rate of fire for this potato gun at short-range will be %i chips-per-minute.  If you had more than %i mashers, you could have made more chips!", [createChips howManyPotatoes], [createChips howManyMashers]];
    potatoChipsLabel2nd.textAlignment = NSTextAlignmentCenter;
    potatoChipsLabel2nd.font = [UIFont systemFontOfSize:14.0];
    potatoChipsLabel2nd.textColor = [UIColor whiteColor];
    potatoChipsLabel2nd.numberOfLines = 5;
    potatoChipsLabel2nd.backgroundColor =  [UIColor colorWithRed:0.2 green:0.4 blue:0.8 alpha:1]; /*#3366cc*/
    [self.view addSubview:potatoChipsLabel2nd];
    
    
            
    
    //use mashed potatoes in the potato gun
    makeMashed *createMashed = (makeMashed*) [potatoFactory createNewPotatoThing:MASHED];
    [createMashed setButterSticks:10];
    [createMashed setLevelOfGooey:55.5];
    
    if (createMashed != nil)
    {
        NSString *mashedPotatoAmmo = @"This is gooey ammo!";
        [createMashed setWhichPotatoType:mashedPotatoAmmo];
        
        NSString *howWillMashedFire = @"Mashed potatoes don't even work well at short range.  What was I thinking!";
        [createMashed setWhatWillIDoWithPotatoes:howWillMashedFire];
        
        [createMashed calculateRateOfFire];
    }
    
    mashedPotatoLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 185, 300, 60)];
    mashedPotatoLabel.text = [NSString stringWithFormat:@"Ah yes, the mashed potato ammo.  %@  %@", [createMashed whichPotatoType], [createMashed whatWillIDoWithPotatoes]];
    mashedPotatoLabel.textAlignment = NSTextAlignmentCenter;
    mashedPotatoLabel.font = [UIFont systemFontOfSize:14.0];
    mashedPotatoLabel.textColor = [UIColor whiteColor];
    mashedPotatoLabel.numberOfLines = 4;
    mashedPotatoLabel.backgroundColor = [UIColor colorWithRed:0.8 green:0.6 blue:0.2 alpha:1]; /*#cc9933*/
    [self.view addSubview:mashedPotatoLabel];
    
    mashedPotatoLabel2nd = [[UILabel alloc]initWithFrame:CGRectMake(10, 255, 300, 60)];
    mashedPotatoLabel2nd.text = [NSString stringWithFormat:@"These potatoes are %f percent gooey, so I can't use them.  They wouldn't meet the %i shots-per-minute requirement.", [createMashed levelOfGooey], [createMashed howManyPotatoes]];
    mashedPotatoLabel2nd.textAlignment = NSTextAlignmentCenter;
    mashedPotatoLabel2nd.font = [UIFont systemFontOfSize:14.0];
    mashedPotatoLabel2nd.textColor = [UIColor whiteColor];
    mashedPotatoLabel2nd.numberOfLines = 5;
    mashedPotatoLabel2nd.backgroundColor = [UIColor colorWithRed:0.8 green:0.6 blue:0.2 alpha:1]; /*#cc9933*/
    [self.view addSubview:mashedPotatoLabel2nd];
    
    
    
    //create the gun, and shoot actual potatoes
    makeGun *createPotatoGun = (makeGun*)[potatoFactory createNewPotatoThing:GUN];
    [createPotatoGun setExtraThatCanBeCramedInBarrel:10];
    [createPotatoGun setPotatoesThatFit:10.5];
    
    if (createPotatoGun != nil)
    {
        NSString *actualPotatoGun = @"Now I'll get my gun ready to fire";
        [createPotatoGun setWhichPotatoType:actualPotatoGun];
        
        NSString *howWillGunFire = @"This potato gun is awesome.  Whole potatoes FTW";
        [createPotatoGun setWhatWillIDoWithPotatoes:howWillGunFire];
        
    }
    
    potatoGunLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 325, 300, 45)];
    potatoGunLabel.text = [NSString stringWithFormat:@"%@.  It works! %@!!", [createPotatoGun whichPotatoType], [createPotatoGun whatWillIDoWithPotatoes]];
    potatoGunLabel.font  = [UIFont systemFontOfSize:14.0];
    potatoGunLabel.numberOfLines = 4;
    potatoGunLabel.textColor = [UIColor whiteColor];
    potatoGunLabel.textAlignment = NSTextAlignmentCenter;
    potatoGunLabel.backgroundColor = [UIColor colorWithRed:0.8 green:0.302 blue:0.2 alpha:1]; /*#cc4d33*/
    [self.view addSubview:potatoGunLabel];
    
    potatoGunLabel2nd = [[UILabel alloc]initWithFrame:CGRectMake(10, 375, 300, 45)];
    potatoGunLabel2nd.text = [NSString stringWithFormat:@"I can put %d extra potatoes in this barrel!  I know I'll get a %f rate of fire!", [createPotatoGun extraThatCanBeCramedInBarrel], [createPotatoGun potatoesThatFit]];
    potatoGunLabel2nd.font = [UIFont systemFontOfSize:14.0];
    potatoGunLabel2nd.numberOfLines = 3;
    potatoGunLabel2nd.textColor = [UIColor whiteColor];
    potatoGunLabel2nd.textAlignment = NSTextAlignmentCenter;
    potatoGunLabel2nd.backgroundColor = [UIColor colorWithRed:0.8 green:0.302 blue:0.2 alpha:1]; /*#cc4d33*/
    [self.view addSubview:potatoGunLabel2nd];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
