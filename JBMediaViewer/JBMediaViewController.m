//
//  JBMediaViewController.m
//  JBMediaViewer
//
//  Created by Jonathan Blower on 26/04/2013.
//  Copyright (c) 2013 Jon Blower. All rights reserved.
//

#import "JBMediaViewController.h"

@interface JBMediaViewController ()

@property (nonatomic, retain) UIImage * appBGImage;
@property (nonatomic, retain) UIImage * mediaImage;

@end

@implementation JBMediaViewController

- (id)initWithBackgroundImage:(UIImage *)backgroundImage andMediaImage:(UIImage *)image
{
    self = [super init];
    if (self) {
        // Custom initialization
        self.appBGImage = backgroundImage;
        self.mediaImage = image;
    }
    return self;
}

- (void)loadView
{
    NSLog(@"%@", NSStringFromCGRect([[UIScreen mainScreen] bounds]));
    self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.view.backgroundColor = [UIColor purpleColor];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    UIImageView * appBG = [[UIImageView alloc] initWithImage:self.appBGImage];
    
    appBG.frame = self.view.frame;
    
    //appBG.frame = CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height-20);
    
    
    
    [self.view addSubview:appBG];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
