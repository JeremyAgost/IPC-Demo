//
//  ServiceObject.m
//  IPCServ
//
//  Created by Jeremy Agostino on 4/24/13.
//  Copyright (c) 2013 Tekserve. All rights reserved.
//

#import "ServiceObject.h"

@implementation ServiceObject

- (NSString *)getInfoCommand:(NSInteger)number
{
    if (number == self.myNumber) {
        return [NSString stringWithFormat:@"%ld is the server's number", number];
    }
    else {
        return [NSString stringWithFormat:@"%ld is NOT the server's number", number];
    }
}

@end
