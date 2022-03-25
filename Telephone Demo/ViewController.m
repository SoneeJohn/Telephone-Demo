//
//  ViewController.m
//  Telephone Demo
//
//  Created by Soneé John on 25/03/2022.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *phoneNumberLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)callAction:(id)sender {
    
    NSString *phoneNumber = @"#123"
    NSString *encodedPhoneNumber = [phoneNumber stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    NSURL *telURL = [NSURL URLWithString:[@"tel:" stringByAppendingString:encodedPhoneNumber]];
    
    [[UIApplication sharedApplication] openURL:telURL options:@{} completionHandler:^(BOOL success) {
        NSLog(@"Finished: %d", success);
    }];

}


@end
