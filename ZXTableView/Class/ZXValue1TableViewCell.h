//
//  ZXValue1TableViewCell.h
//  ZXTableView
//
//  Created by mac on 2021/5/6.
//

#import "ZXTableViewCell.h"

@interface ZXValue1TableViewCellConfig : NSObject

@property (nonatomic, assign) CGFloat height;
@property (nonatomic, strong) UIView *accessoryView;
@property (nonatomic, strong) UIColor *backgroundColor;

@end

@interface ZXValue1TableViewCell : ZXTableViewCell

+ (NSString *)reuseIdentifier;
+ (CGFloat)cellRowHeightForDict:(NSMutableDictionary *)dict;
+ (NSMutableDictionary *)buildCellDictWithConfigBlock:(ZXValue1TableViewCellConfig *(^)(UIImageView *imageView, UILabel *titleLabel, UILabel *subTitleLabel, ZXValue1TableViewCellConfig *config))configBlock;
- (void)updateCellWithDict:(NSMutableDictionary *)dict;

@end
