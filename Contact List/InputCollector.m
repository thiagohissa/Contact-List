//
//  InputCollector.m
//  Contact List
//
//  Created by Thiago Hissa on 2017-06-27.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString{
    
    
    
    NSLog(@"%@",promptString);
    
    char input[255];    
    fgets(input, 255, stdin);
    
    NSString *newString = [NSString stringWithCString:input encoding: NSUTF8StringEncoding];
    [newString stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
    
    
    return newString;
    
}






@end
