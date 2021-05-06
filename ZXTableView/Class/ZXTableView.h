//
//  ZXTableView.h
//  ZXTableView
//
//  Created by mac on 2021/4/30.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, TableEmptyType) {
    TableEmptyTypeNone,
    TableEmptyTypeTitle,
    TableEmptyTypeTitleButton,
    TableEmptyTypeImageTitle,
    TableEmptyTypeImageTitleButton
};

@interface ZXTableView : UITableView

/**
 MJRefresh
 */
@property (nonatomic, copy) void (^headerRefreshingBlock)(void);
@property (nonatomic, copy) void (^footerRefreshingBlock)(void);

- (void)headerRefreshEnable:(BOOL)enable;
- (void)footerRefreshEnable:(BOOL)enable;
- (void)beginHeaderRefreshing;
- (void)endHeaderRefreshing;
- (BOOL)isHeaderRefreshing;
- (void)beginFooterRefreshing;
- (void)endFooterRefreshing;
- (BOOL)isFooterRefreshing;
- (void)noticeFooterNoMoreData;
- (void)resetFooterNoMoreData;

/**
 EmptyDataSet
 */
@property (nonatomic, assign) TableEmptyType tableEmptyType;
@property (nonatomic, strong) UIImage *emptyTableImage;
@property (nonatomic, strong) NSString *emptyTableTitle;
@property (nonatomic, strong) UIImage *emptyTableButtonImage;

@property (nonatomic, strong) NSAttributedString *emptyTableAttributedTitle;
@property (nonatomic, assign) CGFloat verticalOffset;
@property (nonatomic, assign) CGFloat spaceHeight;

@property (nonatomic, copy) void (^emptyTableDidTapButtonBlock)(UIButton *sender);
- (void)enableEmptyTableView;

@end
