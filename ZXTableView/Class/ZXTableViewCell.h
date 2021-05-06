//
//  ZXTableViewCell.h
//  ZXTableView
//
//  Created by mac on 2021/4/30.
//

#import <UIKit/UIKit.h>
#import "NSMutableDictionary+ZXSafe.h"
#import "NSArray+ZXSafe.h"
#import "NSMutableDictionary+TableViewCellAction.h"

@interface ZXTableViewCell : UITableViewCell

+ (NSString *)reuseIdentifier;
+ (CGFloat)cellRowHeight;
+ (CGFloat)cellRowHeightForDict:(NSMutableDictionary *)dict;
+ (CGFloat)cellRowHeightForDict:(NSMutableDictionary *)dict index:(NSInteger)index;
+ (CGFloat)cellRowEstimatedHeight;
+ (CGFloat)cellRowEstimatedHeightForDict:(NSMutableDictionary *)dict;
+ (CGFloat)cellRowEstimatedHeightForDict:(NSMutableDictionary *)dict index:(NSInteger)index;

+ (Class)tableViewCellClassOfDict:(NSMutableDictionary *)dict;
+ (NSMutableDictionary *)buildCellDict:(Class)class;

- (void)updateCellWithDict:(NSMutableDictionary *)dict;
- (void)updateCellWithDict:(NSMutableDictionary *)dict index:(NSInteger)index;

@end
