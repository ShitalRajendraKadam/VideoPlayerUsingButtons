//
//  ViewController.h
//  IOS_VideoPlayWithButton
//
//  Created by Student P_02 on 12/05/18.
//  Copyright © 2018 Shital. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>

@interface ViewController : UIViewController

@property   AVPlayer *Player;

- (IBAction)PlayButton:(id)sender;

- (IBAction)StopButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *VideoView;

@property (weak, nonatomic) IBOutlet UISlider *ValumeSlider;
- (IBAction)ValumeActionSlider:(id)sender;

- (IBAction)PauseButton:(id)sender;
@property (weak, nonatomic) IBOutlet UISlider *SeekSlider;

@end

