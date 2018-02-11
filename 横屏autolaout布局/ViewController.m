//
//  ViewController.m
//  横屏autolaout布局
//
//  Created by 丁磊 on 2018/2/9.
//  Copyright © 2018年 丁磊. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *view1 = [[UIView alloc] init];
    view1.translatesAutoresizingMaskIntoConstraints = NO;
    view1.backgroundColor = [UIColor redColor];
//    添加约束前，必须将子视图添加在父视图上
    [self.view addSubview:view1];
//    将view1视图约束在屏幕竖直方向的中间
    NSLayoutConstraint *constraintX = [NSLayoutConstraint constraintWithItem: view1 attribute: NSLayoutAttributeCenterX relatedBy: NSLayoutRelationEqual toItem: self.view attribute:NSLayoutAttributeCenterX multiplier: 1 constant: 0];
    [self.view addConstraint: constraintX];
    /*
     参数1：设置要约束的第一个视图对象
     参数2：设置约束的第一个参数的约束属性
     参数3：设置约束属性间的关系
     参数4：设置要约束的第二个试图对象
     参数5：设置第二个视图对象的约束属性
     参数6：设置约束的比例
     参数7：设置约束的值
     注意：其中参数2和参数5都需要设置为NSLayoutAttribute类型的枚举，
     枚举值要为约束控件的具体属性，参数3需要设置为NSLayoutRelation
     类型的枚举，这个值决定了所约束属性间的关系，创建约束对象的最后两个
     参数决定了约束值，参数6设置约束比例，参数7设置具体的约束值
     */
//    将view1视图约束在屏幕水平方向的中间
    NSLayoutConstraint *constraintY = [NSLayoutConstraint constraintWithItem: view1 attribute: NSLayoutAttributeCenterY relatedBy: NSLayoutRelationEqual toItem: self.view attribute: NSLayoutAttributeCenterY multiplier: 1 constant: 0];
    [self.view addConstraint: constraintY];
//    将视图的宽度约束为100
    NSLayoutConstraint *constraintW = [NSLayoutConstraint constraintWithItem: view1 attribute: NSLayoutAttributeWidth relatedBy: NSLayoutRelationEqual toItem: nil attribute:NSLayoutAttributeNotAnAttribute multiplier: 1 constant: 100];
    [view1 addConstraint: constraintW];
//    将视图的高度约束为100
    NSLayoutConstraint *constraintH = [NSLayoutConstraint constraintWithItem: view1 attribute: NSLayoutAttributeHeight relatedBy: NSLayoutRelationEqual toItem: nil attribute:NSLayoutAttributeNotAnAttribute multiplier: 1 constant: 100];
    [view1 addConstraint: constraintH];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
