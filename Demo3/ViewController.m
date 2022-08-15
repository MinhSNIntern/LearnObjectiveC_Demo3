//
//  ViewController.m
//  Demo3
//
//  Created by vfa on 8/15/22.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong) UITextField *textField;
@property (nonatomic,strong) UIButton *shareBtn;
@property (nonatomic,strong) UILabel *nameLabel;
@end

@implementation ViewController
- (void) createTextField{
    self.textField = [[UITextField alloc]initWithFrame:CGRectMake(20, 60, 300, 30)];
   // self.textField.translatesAutoresizingMaskIntoConstraints = NO;
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    self.textField.placeholder = @"Enter name to greet";
    self.textField.delegate = self;
    [self.view addSubview: self.textField];
}
- (void) createButton{
    self.shareBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    //self.shareBtn.translatesAutoresizingMaskIntoConstraints = NO;
    self.shareBtn.frame = CGRectMake(340,55,40, 44);
    [self.shareBtn setTitle:@"Greet" forState:UIControlStateNormal];
    [self.shareBtn addTarget:self action:@selector(setNameLabel) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.shareBtn];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self createButton];
    [self createTextField];
    self.nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width-20, 100)];
    self.nameLabel.text = @"NAME";
    self.nameLabel.textColor = [UIColor redColor];
    UIFont *font = [UIFont fontWithName:@"Avenir-Light" size:50.0f];
    self.nameLabel.font=font;
    self.nameLabel.textAlignment = NSTextAlignmentCenter;
    self.nameLabel.center = self.view.center;
    self.nameLabel.numberOfLines=2;
    self.nameLabel.lineBreakMode = NSLineBreakByWordWrapping;
    [self.view addSubview: self.nameLabel];
    
    
    
    // Do any additional setup after loading the view.
}
-(void) setNameLabel{
    self.nameLabel.text = self.textField.text;
    
}
@end
