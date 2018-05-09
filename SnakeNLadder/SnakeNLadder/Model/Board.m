//
//  Board.m
//  SnakeNLadder
//
//  Created by Pradeep HD on 4/25/18.
//  Copyright © 2018 Pradeep HD. All rights reserved.
//

#import "Board.h"
#import "Box.h"

@interface Board ()
@property (nonatomic, strong) NSArray *boxes;
@end

@implementation Board

- (id)initWithRows:(u_int8_t)rows columns:(u_int8_t)columns {
    if (self = [super init]) {
        [self createBoardWithRows:rows columns:columns];
    }
    return self;
}

- (void)createBoardWithRows:(u_int8_t)rows columns:(u_int8_t)columns {
    u_int16_t totalBoxes = rows * columns;
    NSMutableArray *boxes = [NSMutableArray arrayWithCapacity:totalBoxes];
    for (u_int16_t index = 0; index < totalBoxes; index++) {
        Box *box = [Box new];
        box.poistion = index;
        [boxes addObject:box];
    }
    self.boxes = boxes;
}

@end
