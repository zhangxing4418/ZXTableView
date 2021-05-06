//
//  NSMutableDictionary+ZXSafe.h
//  ZXTableView
//
//  Created by mac on 2021/4/30.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (ZXSafe)

- (void)zx_setObj:(id)i forKey:(NSString *)key;
- (void)zx_setFloat:(float)i forKey:(NSString *)key;

- (NSString *)zx_stringForKey:(id)key;
- (float)zx_floatForKey:(id)key;

@end
