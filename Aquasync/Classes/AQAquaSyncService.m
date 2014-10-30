//
//  AQAquaSyncService.m
//  Aquasync
//
//  Created by kaiinui on 2014/10/30.
//  Copyright (c) 2014年 Aquamarine. All rights reserved.
//

#import "AQAquaSyncService.h"

#import "AQAquaSyncPushSyncOperation.h"
#import "AQAquaSyncClient.h"
#import <AFHTTPRequestOperationManager.h>

@interface AQAquaSyncService ()

@property (nonatomic, strong) NSOperationQueue *operationQueue;
@property (nonatomic, strong) AQAquaSyncClient *client;

@end

@implementation AQAquaSyncService

- (instancetype)init {
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    return [self initWithAFHTTPRequestOperationManager:manager];
}

- (instancetype)initWithAFHTTPRequestOperationManager:(AFHTTPRequestOperationManager *)manager {
    self = [super init];
    if (self) {
        self.operationQueue = [[NSOperationQueue alloc] init];
        self.client = [[AQAquaSyncClient alloc] initWithAFHTTPRequestOperationManager:manager];
    }
    return self;
}

# pragma mark - Starting the Service

- (void)start {
#warning MOCK
    AQAquaSyncPushSyncOperation *operation = [[AQAquaSyncPushSyncOperation alloc] initWithDelegate:self withAquaSyncClient:self.client];
    [self.operationQueue addOperation:operation];
}

# pragma mark - AQAquaSyncPushSyncOperationDelegate

- (void)operation:(AQAquaSyncPushSyncOperation *)operation didSuccessWithDeltaPack:(AQDeltaPack *)deltaPack {
#warning TODO: Notification
}

- (void)operation:(AQAquaSyncPushSyncOperation *)operation didFailureWithError:(NSError *)error {
#warning TODO: Notification
}

@end
