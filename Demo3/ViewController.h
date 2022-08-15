//
//  ViewController.h
//  Demo3
//
//  Created by vfa on 8/15/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UILabel *helloLabel;
@property (weak, nonatomic) IBOutlet UIButton *longLinesBtn;

@end

