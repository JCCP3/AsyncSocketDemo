//
//  ViewController.m
//  AsyncSocketDemo
//
//  Created by JC_CP3 on 15/8/19.
//  Copyright (c) 2015年 JC_CP3. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initualSocket];
}

- (void)initualSocket
{
    asyncSocket = [[GCDAsyncSocket alloc] initWithDelegate:self delegateQueue:dispatch_get_main_queue()];
    NSError *error = nil;
    if (![asyncSocket connectToHost:@"" onPort:123 error:nil]) {
        NSLog(@"%@",error);
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
#pragma mark GCDAsyncSocketDelegate


@end
