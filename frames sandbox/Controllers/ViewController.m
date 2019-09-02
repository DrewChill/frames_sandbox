//
//  ViewController.m
//  frames sandbox
//
//  Created by Andrew Hill on 8/31/19.
//  Copyright © 2019 Andrew Hill. All rights reserved.
//

#import "ViewController.h"
#import "../Bluetooth/SoundTest.h"
#import "../Bluetooth/MicTest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playSound:(id)sender {
    SoundTest *test = [[SoundTest alloc] init];
    [test runTest];
}
- (IBAction)startMic:(id)sender {
    MicTest *micTest = [[MicTest alloc] init];
    [micTest runTest];
}
- (IBAction)stopMic:(id)sender {
}

@end
