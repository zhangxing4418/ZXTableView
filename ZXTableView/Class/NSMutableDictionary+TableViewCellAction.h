//
//  NSMutableDictionary+TableViewCellAction.h
//  ZXTableView
//
//  Created by mac on 2021/4/30.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (TableViewCellAction)

- (NSMutableDictionary *)addAction:(void (^) (void))actionBlock;
- (void)executeAction;

@end
