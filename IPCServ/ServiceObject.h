//
//  ServiceObject.h
//  IPCServ
//
//  Created by Jeremy Agostino on 4/24/13.
//  Copyright (c) 2013 Tekserve. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ServiceObject : NSObject

- (NSString *)getInfoCommand:(NSInteger)number;
@property (nonatomic, readwrite) NSInteger myNumber;

@end
