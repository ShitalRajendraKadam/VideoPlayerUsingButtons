//
//  ViewController.m
//  IOS_VideoPlayWithButton
//
//  Created by Student P_02 on 12/05/18.
//  Copyright © 2018 Shital. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end
int flag=0;
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)PlayButton:(id)sender
{
    
    
    NSString *strpath=[[NSBundle mainBundle]pathForResource:@"Varya varti" ofType:@"mp4"];
    NSURL *url=[NSURL fileURLWithPath:strpath];
    
    

    AVPlayerItem *item=[AVPlayerItem playerItemWithURL:url];
    
    self.Player=[AVPlayer playerWithPlayerItem:item];
    self.Player.volume=2.0;
    
    AVPlayerLayer *Layer1=[AVPlayerLayer playerLayerWithPlayer:self.Player];
    Layer1.videoGravity=AVLayerVideoGravityResizeAspectFill;
    Layer1.frame=self.VideoView.layer.bounds;
    
    
   
    
    [self.VideoView.layer addSublayer:Layer1];
    
    [self.Player play];
}

- (IBAction)StopButton:(id)sender
{
    [self.Player pause];
    self.SeekSlider.value=0;
    flag=1;

     self.Player = nil;
}
- (IBAction)ValumeActionSlider:(id)sender
{
    self.Player.volume=self.ValumeSlider.value;

}

- (IBAction)PauseButton:(id)sender
{
      [self.Player pause];
    flag=2;
}
@end
