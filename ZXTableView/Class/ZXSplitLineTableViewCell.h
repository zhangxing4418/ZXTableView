//
//  ZXSplitLineTableViewCell.h
//  ZXTableView
//
//  Created by mac on 2021/5/6.
//

#import "ZXTableViewCell.h"

@interface ZXSplitLineTableViewCell : ZXTableViewCell

+ (NSString *)reuseIdentifier;
+ (CGFloat)cellRowHeightForDict:(NSMutableDictionary *)dict;
+ (NSMutableDictionary *)buildCellDictWithBackgroundColor:(UIColor *)bgColor height:(CGFloat)height leftEdge:(CGFloat)left rightEdge:(CGFloat)right;

@end
