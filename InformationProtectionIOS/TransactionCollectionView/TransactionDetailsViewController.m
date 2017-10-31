//
//  TransactionDetailsViewController.m
//  InformationProtectionIOS
//
//  Created by Dayrabekov Artem on 30.10.17.
//  Copyright © 2017 IraNikolenko. All rights reserved.
//

#import "TransactionDetailsViewController.h"

@interface TransactionDetailsViewController ()

@end

@implementation TransactionDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Transaction loaded");
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
    [self setup];
}

- (void)setup {
    self.transactionID.text = [NSString stringWithFormat:@"%@",self.transaction.transactionID];
    
    double timeStamp = [self.transaction.date doubleValue];
    NSTimeInterval timeInterval=timeStamp/1000;
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeInterval];
    NSDateFormatter *dateformatter=[[NSDateFormatter alloc]init];
    [dateformatter setDateFormat:@"dd-MM-yyyy"];
    NSString *dateString=[dateformatter stringFromDate:date];
    
    self.date.text = dateString;
    self.requestor.text = self.transaction.requestor;
    self.location.text = self.transaction.location;
    self.status.text = self.transaction.status;
    self.transactionCode.text = self.transaction.transactionCode;
    self.transactionDescription.text = self.transaction.descriptionTransaction;
    self.requestorLogo.text = self.transaction.requestorLogo;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
