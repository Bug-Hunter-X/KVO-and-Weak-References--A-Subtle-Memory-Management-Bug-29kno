To fix this, ensure you remove the observer in the appropriate place, such as the observer's `dealloc` method or when the observation is no longer needed:

```objectivec
@implementation MyObject
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    if ([keyPath isEqualToString:@