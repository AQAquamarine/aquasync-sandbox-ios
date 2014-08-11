#import "RLMObject+Transaction.h"

@implementation RLMObject (Transaction)

// Perform changes with transaction.
- (void)updateWithBlock:(void (^)(void))changes {
    RLMRealm *realm = [RLMRealm defaultRealm];
    [realm beginWriteTransaction];
    changes();
    [realm commitWriteTransaction];
}

@end