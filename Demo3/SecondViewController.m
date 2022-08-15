//
//  SecondViewController.m
//  Demo3
//
//  Created by vfa on 8/15/22.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (nonatomic,strong) UITextView *longTextView;
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"Input View";
    // Do any additional setup after loading the view.
    self.longTextView = [[UITextView alloc] initWithFrame:self.view.bounds];
    self.longTextView.text=@"Some text here...";
    self.longTextView.contentInset = UIEdgeInsetsMake(10, 0, 0, 0);
    self.longTextView.font = [UIFont systemFontOfSize:20.0f];
    [self.view addSubview: self.longTextView];
    
    
    
}
-(void) handlerKeyBoardDidShow:(NSNotification *)paramNotification{
    NSValue *keyboardRectAsObject = [[paramNotification userInfo] objectForKey:UIKeyboardFrameEndUserInfoKey];
    CGRect keyboardRect = CGRectZero;
    
    [keyboardRectAsObject getValue:&keyboardRect];
    self.longTextView.contentInset = UIEdgeInsetsMake(0, 0, keyboardRect.size.height, 0);
}
-(void) handlerKeyBoardWillHide:(NSNotification *)paramNotification{
    self.longTextView.contentInset = UIEdgeInsetsZero;
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [[NSNotificationCenter defaultCenter]
     addObserver:self selector:@selector(handlerKeyBoardDidShow:) name:UIKeyboardDidShowNotification object:nil];
    [[NSNotificationCenter defaultCenter]
     addObserver:self selector:@selector(handlerKeyBoardWillHide:) name:UIKeyboardWillHideNotification object:nil];
}
- (void)viewWillDisappear:(BOOL)animated{

    [super viewWillDisappear:animated];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
