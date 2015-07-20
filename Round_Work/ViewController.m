//
//  ViewController.m
//  Round_Work
//
//  Created by qianfeng on 15-7-19.
//  Copyright (c) 2015年 qf. All rights reserved.
//
#define  padding 20
#import "ViewController.h"

@interface ViewController ()
{
    UIView  *_viewRed;
    
    UIView  *_viewCyan;
    
    UIView  *_viewBlack;
    
    UIView  *_viewWhite;
    
    UIView  *_viewGray;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor=[UIColor  grayColor];
    _viewRed=[[UIView  alloc]init];
    _viewRed.frame=CGRectMake(padding, padding, self.view.bounds.size.width-2*padding, padding);
    _viewRed.backgroundColor=[UIColor  redColor];
    [self.view  addSubview:_viewRed];
    
    _viewRed.autoresizingMask=UIViewAutoresizingFlexibleWidth;
//左边底层view
    _viewCyan=[[UIView  alloc]init];
    _viewCyan.frame=CGRectMake(0, 3*padding,self.view.bounds.size.width/2,self.view.frame.size.height);
    
    NSLog(@"greenFrame: %@", NSStringFromCGRect(_viewCyan.frame));
    NSLog(@"viewFrame: %@", NSStringFromCGRect(self.view.frame));
    _viewCyan.backgroundColor=[UIColor  cyanColor];
    _viewCyan.autoresizingMask=UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleRightMargin;
    
    [self.view  addSubview:_viewCyan];
//左边view
    _viewWhite=[[UIView  alloc]init];
    CGFloat  _viewWhiteY=CGRectGetMaxY(_viewRed.frame)+padding;
    CGFloat  _viewWhiteW=_viewCyan.bounds.size.width-padding-padding/2;
    CGFloat  _viewWhiteH=self.view.frame.size.height-_viewWhiteY-padding;
    
    //CGFloat  _viewWhiteH=_viewCyan.frame.size.height-padding;
    _viewWhite.frame=CGRectMake(padding,0, _viewWhiteW, _viewWhiteH);
    _viewWhite.backgroundColor=[UIColor  whiteColor];
    [_viewCyan  addSubview:_viewWhite];
    _viewWhite.autoresizingMask=UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
    
    
//右边底层view
    _viewBlack=[[UIView  alloc]init];
    
    _viewBlack.frame=CGRectMake(self.view.bounds.size.width/2,3*padding,self.view.bounds.size.width/2,self.view.frame.size.height);
    _viewBlack.backgroundColor=[UIColor  blackColor];
    _viewBlack.autoresizingMask=UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleLeftMargin;
    [self.view  addSubview:_viewBlack];

    _viewGray=[[UIView  alloc]init];
    
    CGFloat  _viewGrayY=CGRectGetMaxY(_viewRed.frame)+padding;
    CGFloat  _viewGrayW=_viewBlack.bounds.size.width-padding-padding/2;
    CGFloat  _viewGrayH=self.view.frame.size.height-_viewGrayY-padding;
    _viewGray.frame=CGRectMake(padding/2, 0, _viewGrayW, _viewGrayH);
    _viewGray.backgroundColor=[UIColor  lightGrayColor];
    [_viewBlack  addSubview:_viewGray];
    _viewGray.autoresizingMask=UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

