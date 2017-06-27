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

    
    ContactList *newContactArray = [[ContactList alloc] init];
    
    
 
    
    
    
    // While Loop statrs here and it will be executed until user input = 'quit' REPLAY = NO
    BOOL REPLAY = YES;
    while(REPLAY){
        
    
    
    InputCollector *input = [[InputCollector alloc] init];
    
    NSString *menu = [input inputForPrompt:@"\n - Create a new contact list\n - List all contacts \n - Quit - Exit Application\n"];
    
    
    
        if([menu containsString:@"quit"]){
            REPLAY = NO;
            break;
        }
        
        
        if([menu containsString:@"new"]){
            
            
            NSLog(@"Enter full name");
            
            char input1[255];
            fgets(input1, 255, stdin);
            NSString *newName = [NSString stringWithCString:input1 encoding: NSUTF8StringEncoding];
            [newName stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
            
            
            
            NSLog(@"Enter email");
            char input2[255];
            fgets(input2, 255, stdin);
            NSString *newEmail = [NSString stringWithCString:input2 encoding: NSUTF8StringEncoding];
            [newEmail stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
            
            Contact *newContact = [[Contact alloc] init];
            newContact.name = newName;
            newContact.email = newEmail;
            
            [newContactArray addContact:newContact];
            
        }
        
        
    }
    

    return 0;
}
