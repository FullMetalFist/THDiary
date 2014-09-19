//
//  EntryTableViewCell.h
//  THDiary
//
//  Created by Michael Vilabrera on 9/19/14.
//  Copyright (c) 2014 Giving Tree. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DiaryEntry;

@interface EntryTableViewCell : UITableViewCell

+ (CGFloat) heightForEntry:(DiaryEntry *)entry;

- (void) configureCellForEntry:(DiaryEntry *)entry;

@end
