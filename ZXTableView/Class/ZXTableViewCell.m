//
//  ZXTableViewCell.m
//  ZXTableView
//
//  Created by mac on 2021/4/30.
//

#import "ZXTableViewCell.h"

@implementation ZXTableViewCell

+ (NSString *)reuseIdentifier {
    static NSString *__reuseIdentifier = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        __reuseIdentifier = NSStringFromClass([self class]);
    });
    return __reuseIdentifier;
}

+ (CGFloat)cellRowHeight {
    return 44;
}

+ (CGFloat)cellRowHeightForDict:(NSMutableDictionary *)dict {
    return [ZXTableViewCell cellRowHeight];
}

+ (CGFloat)cellRowHeightForDict:(NSMutableDictionary *)dict index:(NSInteger)index {
    return [ZXTableViewCell cellRowHeightForDict:dict];
}

+ (CGFloat)cellRowEstimatedHeight {
    return [ZXTableViewCell cellRowHeight];
}

+ (CGFloat)cellRowEstimatedHeightForDict:(NSMutableDictionary *)dict {
    return [ZXTableViewCell cellRowEstimatedHeight];
}

+ (CGFloat)cellRowEstimatedHeightForDict:(NSMutableDictionary *)dict index:(NSInteger)index {
    return [ZXTableViewCell cellRowEstimatedHeightForDict:dict];
}

+ (NSString *)dictKeyOfClassName {
    return @"className";
}

+ (Class)tableViewCellClassOfDict:(NSMutableDictionary *)dict {
    NSString *className = [dict zx_stringForKey:[ZXTableViewCell dictKeyOfClassName]];
    if (className && className.length > 0) {
        return NSClassFromString(className);
    }
    return [self class];
}

+ (NSMutableDictionary *)buildCellDict:(Class)class {
    return [NSMutableDictionary dictionaryWithObject:NSStringFromClass(class) forKey:[ZXTableViewCell dictKeyOfClassName]];
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
    }
    return self;
}

- (void)updateCellWithDict:(NSMutableDictionary *)dict {
    NSLog(@"基类updateCellWithDict:");
}

- (void)updateCellWithDict:(NSMutableDictionary *)dict index:(NSInteger)index {
    NSLog(@"基类updateCellWithDict:index:");
}

@end
