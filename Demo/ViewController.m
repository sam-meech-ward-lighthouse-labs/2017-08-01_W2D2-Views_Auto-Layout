//
//  ViewController.m
//  Demo
//
//  Created by Sam Meech-Ward on 2017-08-01.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *tangerineView;
@property (weak, nonatomic) UIView *magentaView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.tangerineView.backgroundColor = [UIColor yellowColor];
    self.tangerineView.alpha = 0.5;
    
    self.tangerineView.frame = CGRectMake(20.0, 200.0, 200.0, 500.0);
    
//    self.tangerineView.center = CGPointMake(300.0, 300.0);
//    self.tangerineView.center = self.view.center;
    
    
    NSLog(@"\n%@\n%@", NSStringFromCGRect(self.tangerineView.frame), NSStringFromCGRect(self.tangerineView.bounds));
    
    UIView *someView = [[UIView alloc] init];
    someView.backgroundColor = [UIColor magentaColor];
    someView.frame = CGRectMake(200, 200, 200, 200);
    
    [self.view addSubview:someView];
    
    
    self.magentaView = someView;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doSomething:(id)sender {
    
    CGRect frame = self.magentaView.frame;
    
    [UIView animateWithDuration:2.1 animations:^{
        
        self.magentaView.center = CGPointMake(50.0, 100.0);
        self.magentaView.backgroundColor = [UIColor greenColor];
        self.magentaView.alpha = 0.5;
        self.magentaView.center = CGPointMake(200.0, 100.0);
        
    } completion:^(BOOL finished) {
        
        // When will this code get called?
        // When the animation is finished
        
        NSLog(@"Animation finished");
        self.magentaView.frame = frame;
        
    }];
    
}


@end
