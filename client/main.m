//
//  main.m
//  ipc
//
//  Created by Jeremy Agostino on 4/24/13.
//  Copyright (c) 2013 Tekserve. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "../IPCServ/ServiceObject.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        ServiceObject * obj = (id)[NSConnection rootProxyForConnectionWithRegisteredName:@"com.tekserve.IPCServ.TestService" host:nil];
        
        if (obj) {
            obj.myNumber = 5;
            
            for (NSInteger i = 4; i <= 6; i++) {
                NSLog(@"%@", [obj getInfoCommand:i]);
            }
            
            [[(NSDistantObject *)obj connectionForProxy] invalidate];
        }
        else {
            NSLog(@"No Connection");
        }
    }
    return 0;
}

