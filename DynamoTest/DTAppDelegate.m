#import "DTAppDelegate.h"
#import "DViewController.h"

@implementation DTAppDelegate
@synthesize window=_window, viewController=_viewController;

- (void)dealloc
{
    [_window release], _window = nil;
    [_viewController release], _viewController = nil;
    [super dealloc];
}

- (BOOL)application:(UIApplication *)aApplication
didFinishLaunchingWithOptions:(NSDictionary *)aLaunchOptions
{
    _window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    NSString *scriptPath = [[NSBundle mainBundle] pathForResource:@"boot" ofType:@"lua" inDirectory:@"Scripts"];
    _viewController = [[DViewController alloc] initWithBootScriptPath:scriptPath];
    _window.rootViewController = _viewController;
    
    [_window makeKeyAndVisible];
    
    return YES;
}
@end
