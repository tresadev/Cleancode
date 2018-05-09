//
//  Players.m
//  SnakeNLadder
//
//  Created by Pradeep HD on 4/25/18.
//  Copyright © 2018 Pradeep HD. All rights reserved.
//

#import "Players.h"
#import "Player.h"

@interface Players ()
@property (nonatomic, strong) NSArray *players;
@end

@implementation Players

- (id)initWithNumberOfPlayers:(u_int8_t)playerCount {
    if (self = [super init]) {
        [self createPlayers:playerCount];
    }
    return self;
}

- (void)createPlayers:(u_int8_t)playerCount {
    NSMutableArray *players = [NSMutableArray array];
    for (u_int8_t index = 1; index <= playerCount; index++) {
        Player *player = [Player new];
        player.identifier = index;
        [players addObject:player];
    }
    self.players = players;
}

@end
