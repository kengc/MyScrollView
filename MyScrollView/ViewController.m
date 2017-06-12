//
//  ViewController.m
//  MyScrollView
//
//  Created by Kevin Cleathero on 2017-06-12.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "ViewController.h"

#import "MyScrollView.h"

@interface ViewController ()

@property (nonatomic) MyScrollView *baseView;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //base view
    _baseView = [[MyScrollView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:self.baseView];
    
    //Red View
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    [self.baseView addSubview:redView];
    
    //Green View
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
     greenView.backgroundColor = [UIColor greenColor];
    [self.baseView addSubview:greenView];
    
    //Blue View
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = [UIColor blueColor];
    [self.baseView addSubview:blueView];
    
    //Yellow View
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowView.backgroundColor = [UIColor yellowColor];
    [self.baseView addSubview:yellowView];
    
}

-(void)viewWillAppear:(BOOL)animated{
    
    CGRect r = self.baseView.frame;
    r.origin.y -= 100;
    //[self.baseView setFrame:r];
    [self.baseView setBounds:r];


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
