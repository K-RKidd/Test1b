//
//  Test1bViewController.m
//  Test1b
//
//  Created by Krystle on 2/26/14.
//  Copyright (c) 2014 Krystle Kidd. All rights reserved.
//

#import "Test1bViewController.h"
#import "Card.h"




@interface Test1bViewController ()

@end

@implementation Test1bViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
   ///update this score then to display the score of the game
    [self.label setText:@"Score:"];
    
    
    
   
}
-(id)init
{
    self = [super init];
    if (self){
    _deck = [[Deck alloc] init];
    _game = [[CardMatchingGame alloc]initWithCardCount:16 Deck:_deck];
    
       
    
    
    }
    return self;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

///Implement the matching function in card by getting two card and then using the cardmatchinggame function choosecard at index to compare the two cards and if they match disable them if they dont "flip" them back over adding in to add to score if match and to subtract if no match

 // All the changing methods for the cards///////////

- (IBAction)change:(id)sender{
    static int change = 1;
            if (change ==1){
                change = 0;
                Card *aCard = [_game chooseCardAtIndex:[self.cardsOnView indexOfObject:sender]];
                [self.button setTitle:aCard.contentsOfCard forState:UIControlStateNormal];
                [self.button setBackgroundImage:nil forState:UIControlStateSelected];
                ///Add score to -1 when flipping a card 
                
        }  else {
            change =1;
            [self.button setTitle:nil forState:UIControlStateNormal];
    }}
   




@end
