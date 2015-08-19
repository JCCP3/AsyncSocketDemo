//
//  ViewController.h
//  AsyncSocketDemo
//
//  Created by JC_CP3 on 15/8/19.
//  Copyright (c) 2015年 JC_CP3. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GCDAsyncSocket.h"

@interface ViewController : UIViewController<GCDAsyncSocketDelegate>
{
    GCDAsyncSocket *asyncSocket;
}

@end
