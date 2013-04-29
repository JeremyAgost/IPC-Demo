//
//  AppDelegate.m
//  IPCServ
//
//  Created by Jeremy Agostino on 4/24/13.
//  Copyright (c) 2013 Tekserve. All rights reserved.
//

#import "AppDelegate.h"
#import "ServiceObject.h"

@interface AppDelegate () <NSPortDelegate>

@property (nonatomic, strong) NSConnection * serverConnection;
@property (nonatomic, strong) ServiceObject * serviceObject;

- (IBAction)actionStart:(id)sender;
- (IBAction)actionStop:(id)sender;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    
}

- (void)actionStart:(id)sender
{
    if (self.serviceObject || self.serverConnection) return;
    self.serviceObject = [ServiceObject new];
    self.serverConnection = [NSConnection serviceConnectionWithName:@"com.tekserve.IPCServ.TestService" rootObject:self.serviceObject];
}

- (void)actionStop:(id)sender
{
    [self.serverConnection invalidate];
    self.serverConnection.rootObject = nil;
    self.serviceObject = nil;
}

@end
