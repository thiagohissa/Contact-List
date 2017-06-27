//
//  main.m
//  Contact List
//
//  Created by Thiago Hissa on 2017-06-27.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
#import "ContactList.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {

    
   
        
    BOOL REPLAY = YES;
    
    while(REPLAY){
        
    
    
    InputCollector *input = [[InputCollector alloc] init];
    
    NSString *menu = [input inputForPrompt:@"\n - Create a new contact list\n - List all contacts \n - Quit - Exit Application\n"];
    
    
    
        if([menu containsString:@"quit"]){
            REPLAY = NO;
            break;
        }
        
    }
    

    return 0;
}
