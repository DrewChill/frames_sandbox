//
//  MicTest.m
//  frames sandbox
//
//  Created by Andrew Hill on 8/31/19.
//  Copyright © 2019 Andrew Hill. All rights reserved.
//

#import "MicTest.h"
#import "Example/IosAudioController.h"

@implementation MicTest{
    IosAudioController *audioController;
}

-(void)runTest{
    audioController = [[IosAudioController alloc] init];
    [audioController start];
}

-(void)stopTest{
    [audioController stop];
}

@end
