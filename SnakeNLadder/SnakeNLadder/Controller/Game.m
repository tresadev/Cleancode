//
//  Game.m
//  SnakeNLadder
//
//  Created by Pradeep HD on 4/25/18.
//  Copyright © 2018 Pradeep HD. All rights reserved.
//

#import "Game.h"
#import "Board.h"
#import "Players.h"

@interface Game ()
@property (nonatomic, strong) Board *board;
@property (nonatomic, strong) Players *players;
@end

@implementation Game

- (void)initialize {
    self.board = [[Board alloc] initWithRows:10 columns:10];
    self.players = [[Players alloc] initWithNumberOfPlayers:4];
}

- (void)startGame {
    
}

@end
