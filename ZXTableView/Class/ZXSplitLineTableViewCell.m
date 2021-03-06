//
//  ZXSplitLineTableViewCell.m
//  ZXTableView
//
//  Created by mac on 2021/5/6.
//

#import "ZXSplitLineTableViewCell.h"

@interface ZXSplitLineTableViewCell ()

@property (nonatomic, strong) UIView *splitLineView;

@end

@implementation ZXSplitLineTableViewCell

- (UIView *)splitLineView {
    if (!_splitLineView) {
        _splitLineView = [[UIView alloc] initWithFrame:CGRectZero];
        _splitLineView.backgroundColor = [UIColor clearColor];
    }
    return _splitLineView;
}

+ (NSString *)reuseIdentifier {
    static NSString *__reuseIdentifier = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        __reuseIdentifier = NSStringFromClass([ZXSplitLineTableViewCell class]);
    });
    return __reuseIdentifier;
}

+ (CGFloat)cellRowHeightForDict:(NSMutableDictionary *)dict {
    return [dict zx_floatForKey:@"height"];
}

+ (NSMutableDictionary *)buildCellDictWithBackgroundColor:(UIColor *)bgColor height:(CGFloat)height leftEdge:(CGFloat)left rightEdge:(CGFloat)right {
    NSMutableDictionary *dict = [super buildCellDict:[ZXSplitLineTableViewCell class]];
    [dict zx_setObj:bgColor forKey:@"bgColor"];
    [dict zx_setFloat:height forKey:@"height"];
    [dict zx_setFloat:left forKey:@"leftEdge"];
    [dict zx_setFloat:right forKey:@"rightEdge"];
    return dict;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor clearColor];
        [self.contentView addSubview:self.splitLineView];
    }
    return self;
}

- (void)updateCellWithDict:(NSMutableDictionary *)dict {
    UIColor *bgColor = [dict objectForKey:@"bgColor"];
    CGFloat height = [dict zx_floatForKey:@"height"];
    CGFloat leftEdge = [dict zx_floatForKey:@"leftEdge"];
    CGFloat rightEdge = [dict zx_floatForKey:@"rightEdge"];
    self.splitLineView.backgroundColor = bgColor;
    self.splitLineView.frame = CGRectMake(leftEdge, 0, CGRectGetWidth([UIScreen mainScreen].bounds) - leftEdge - rightEdge, height);
}

@end
