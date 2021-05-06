//
//  NSArray+ZXSafe.m
//  ZXTableView
//
//  Created by mac on 2021/4/30.
//

#import "NSArray+ZXSafe.h"

@implementation NSArray (ZXSafe)

- (id)zx_objectWithIndex:(NSUInteger)index {
    if (index < self.count) {
        return self[index];
    }else {
        return nil;
    }
}

@end
