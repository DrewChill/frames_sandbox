//
//  SoundTest.m
//  frames sandbox
//
//  Created by Andrew Hill on 8/31/19.
//  Copyright © 2019 Andrew Hill. All rights reserved.
//

#import "SoundTest.h"
#import <AVKit/AVKit.h>

@implementation SoundTest

-(void)runTest{
    // create and set up the audio session
    AVAudioSession* audioSession = [AVAudioSession sharedInstance];
    [audioSession setCategory: AVAudioSessionCategoryPlayAndRecord error: nil];
    [audioSession setActive: YES error: nil];
    
    // set up for bluetooth microphone input
    NSError *setCategoryError = nil;
    if (![audioSession setCategory:AVAudioSessionCategoryPlayAndRecord
                  withOptions:AVAudioSessionCategoryOptionAllowBluetooth
                        error:&setCategoryError]) {
        NSLog(@"could not set blutooth property");
    }
    
    // check the audio route
    NSLog(@"route = %@", [[audioSession currentRoute] description]);
    
    // now, play a quick sound we put in the bundle (bomb.wav)
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    CFURLRef        soundFileURLRef;
    SystemSoundID   soundFileObject;
    soundFileURLRef  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound"),CFSTR ("wav"),NULL);
    AudioServicesCreateSystemSoundID (soundFileURLRef,&soundFileObject);
    AudioServicesPlaySystemSound (soundFileObject);     // should play into frames
}

@end
