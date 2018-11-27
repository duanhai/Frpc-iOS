//
//  ViewController.m
//  TestFrpc
//
//  Created by duanhai on 2018/11/27.
//  Copyright © 2018 duanhai. All rights reserved.
//

#import "ViewController.h"
#import <FrpManager/FrpManager.h>
@interface ViewController ()

@end

@implementation ViewController
- (NSString *)getConfigFilePath {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"frpc" ofType:@"ini"];
    //    NSString *fileContent = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    return path;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *configPath = [[NSBundle mainBundle] pathForResource:@"frpc" ofType:@"ini"];

    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        //frpclib run
        NSError *error = nil;
//        SubRunClient([self getConfigFilePath],&error);
        FrpManagerRunFrpc();
        dispatch_async(dispatch_get_main_queue(), ^{
            //刷新UI
        });
    });
    // Do any additional setup after loading the view, typically from a nib.
}


@end
