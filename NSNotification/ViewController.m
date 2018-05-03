//
//  ViewController.m
//  NSNotification
//
//  Created by lizaveta shulskaya on 03.05.2018.
//  Copyright © 2018 lizaveta shulskaya. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()
@property (strong, nonatomic) Person* person;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //NSNotificationCenter* nc = [NSNotificationCenter defaultCenter];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(personNotification:) name:PersonWeightChangeNotification object:nil];
    
    self.person = [[Person alloc] init];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(personNotification:) name:PersonHeightChangeNotification object:nil];
    
    
    self.person.height = 165;
    self.person.weight = 52;
    
    
     
    
    
}

-(void) personNotification: (NSNotification*) notification{
    NSLog(@"Person info: %@", notification.userInfo);
}

-(void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
