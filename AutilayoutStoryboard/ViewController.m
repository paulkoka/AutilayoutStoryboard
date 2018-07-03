//
//  ViewController.m
//  AutilayoutStoryboard
//
//  Created by paul on 6/28/18.
//  Copyright © 2018 Paul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (retain, nonatomic) IBOutlet NSLayoutConstraint *commonHeigth;
@property (retain, nonatomic) IBOutlet NSLayoutConstraint *compactBlueViewSmall;
@property (retain, nonatomic) IBOutlet NSLayoutConstraint *compactRedViewSmall;

@property (retain, nonatomic) IBOutlet NSLayoutConstraint *commonWidth;
@property (retain, nonatomic) IBOutlet NSLayoutConstraint *regularBlueViewSmall;
@property (retain, nonatomic) IBOutlet NSLayoutConstraint *regularRedViewSmall;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)blueButtonTap:(id)sender {

    if (self.traitCollection.horizontalSizeClass == UIUserInterfaceSizeClassCompact) {
        self.commonHeigth.active = NO;
        self.compactRedViewSmall.active = NO;
        
        self.compactBlueViewSmall.active = YES;
    }
    
            else{
                self.commonWidth.active = NO;
                self.regularRedViewSmall.active = NO;
                
                self.regularBlueViewSmall.active = YES;
        }
    
   
    
}
- (IBAction)redButtonTap:(id)sender {
    
    if (self.traitCollection.horizontalSizeClass == UIUserInterfaceSizeClassCompact) {
        self.commonHeigth.active = NO;
        self.compactBlueViewSmall.active = NO;
        
        self.compactRedViewSmall.active = YES;
    }
            else{
                self.commonWidth.active = NO;
                self.regularBlueViewSmall.active = NO;
                
                self.regularRedViewSmall.active = YES;
            }

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)dealloc {

    [_commonHeigth release];
    [_compactBlueViewSmall release];
    [_compactRedViewSmall release];
    [_commonWidth release];
    [_regularBlueViewSmall release];
    [_regularRedViewSmall release];
    [super dealloc];
}
@end
