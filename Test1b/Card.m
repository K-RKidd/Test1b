//
//  Card.m
//  Test1b
//
//  Created by Krystle on 2/26/14.
//  Copyright (c) 2014 Krystle Kidd. All rights reserved.
//

#import "Card.h"
#import "Deck.h"




@implementation Card

-(NSString *)contentsOfCard {
    NSString *show = (@" %d %@",_rank, _suit);
    return show;
}

-(int) match:(NSArray *)cards
{
    int didMatch = 0;;
    for (int i = 0; i < cards.count; i++){
        Card *aCard = [cards objectAtIndex:i];
    if ([aCard.contentsOfCard isEqualToString:self.contentsOfCard]){
        didMatch = 1;
    }
    }
    return didMatch;
}

-(int)choosen {
    if (!_chosen){
        return 0;
        
    }else
    { return 1;}
}
-(int)match {
    if (!_matched){
        return 0;
    }else
    {return 1;}
}

@end
