#import <UIKit/UIKit.h>

@interface CraryInputDialog : NSObject

+ (void)selectSingle:(UIView*)view items:(NSArray*)items done:(void(^)(NSInteger buttonIndex))done;

@end
