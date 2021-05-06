//
//  ZXValue1TableViewCell.m
//  ZXTableView
//
//  Created by mac on 2021/5/6.
//

#import "ZXValue1TableViewCell.h"

@implementation ZXValue1TableViewCellConfig
@end

@interface ZXValue1TableViewCellArguments : NSObject

@property (nonatomic, copy) ZXValue1TableViewCellConfig *(^configBlock) (UIImageView *imageView, UILabel *titleLabel, UILabel *subTitleLabel, ZXValue1TableViewCellConfig *config);

@end

@implementation ZXValue1TableViewCellArguments
@end

@implementation ZXValue1TableViewCell

+ (NSString *)reuseIdentifier {
    static NSString *__reuseIdentifier = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        __reuseIdentifier = NSStringFromClass([ZXValue1TableViewCell class]);
    });
    return __reuseIdentifier;
}

+ (CGFloat)cellRowHeightForDict:(NSMutableDictionary *)dict {
    return [dict zx_floatForKey:@"height"];
}

+ (NSMutableDictionary *)buildCellDictWithConfigBlock:(ZXValue1TableViewCellConfig *(^)(UIImageView *, UILabel *, UILabel *, ZXValue1TableViewCellConfig *))configBlock {
    NSMutableDictionary *dict = [super buildCellDict:[ZXValue1TableViewCell class]];
    if (configBlock) {
        ZXValue1TableViewCellArguments *arguments = [[ZXValue1TableViewCellArguments alloc] init];
        arguments.configBlock = configBlock;
        [dict zx_setObj:arguments forKey:@"Arguments"];
    }
    [dict zx_setFloat:44 forKey:@"height"];
    return dict;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor whiteColor];
        [self setBackgroundColor:[UIColor whiteColor]];
        self.textLabel.textColor = [UIColor blackColor];
        self.textLabel.font = [UIFont systemFontOfSize:13];
        self.detailTextLabel.textColor = [UIColor whiteColor];
        self.detailTextLabel.font = [UIFont systemFontOfSize:13];
    }
    return self;
}

- (void)updateCellWithDict:(NSMutableDictionary *)dict {
    ZXValue1TableViewCellArguments *arguments = [dict objectForKey:@"Arguments"];
    if (arguments.configBlock) {
        ZXValue1TableViewCellConfig *config = arguments.configBlock(self.imageView, self.textLabel, self.detailTextLabel, [[ZXValue1TableViewCellConfig alloc] init]);
        [dict zx_setFloat:config.height forKey:@"height"];
        self.accessoryView = config.accessoryView;
        self.backgroundColor = config.backgroundColor ? config.backgroundColor : [UIColor whiteColor];
        self.contentView.backgroundColor = config.backgroundColor ? config.backgroundColor : [UIColor whiteColor];
    }
}

@end
