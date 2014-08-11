//
//  RLMObject+AquasyncModelManagerMethods.h
//  aquasync
//
//  Created by kaiinui on 2014/08/12.
//  Copyright (c) 2014年 Aquamarine. All rights reserved.
//

#import <Realm/Realm.h>

@interface RLMObject (AquasyncModelManagerMethods)

// Gets records where dirty=true and return them as an array.
// @return An array of NSDictionary
+ (NSArray *)aq_extractDeltas;

// Receive deltas and save them.
// @param deltas An array of NSDictionary. A part of DeltaPack (https://github.com/AQAquamarine/aquasync-protocol/blob/master/deltapack.md)
+ (void)aq_receiveDeltas:(NSArray *)deltas;

// Undirty records from deltas. The process is described in https://github.com/AQAquamarine/aquasync-protocol#undirty
// @param deltas An array of NSDictionary.
+ (void)aq_undirtyRecordsFromDeltas:(NSArray *)deltas;

@end
