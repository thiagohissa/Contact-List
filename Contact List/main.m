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
    
    NSString *menu = [input inputForPrompt:@"\n\n new - Create a new contact list\n show - Find contact by ID \n list - List all contacts \n quit - Exit Application\n\n Enter an option from menu: "];
    
    
        
        if([[menu lowercaseString] containsString:@"quit"]){
            NSLog(@"Thank you, bye!");
            REPLAY = NO;
            break;
        }
        
        
        
        // User will enter name & email which will be the properties of a Contact instance which will be stored at ContactList
        if([[menu lowercaseString] containsString:@"new"]){
            
            
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
        
        
        
        
        // Prints the array (property) from ContactList
        if([[menu lowercaseString] containsString:@"list"]){
            
            NSLog(@"%@", newContactArray.contactArray);
            
        }
        
        
        
        
        // Search and show contact with specific id number (id number defined at ContactList when adding to array)
        if([[menu lowercaseString] containsString:@"show"]){
            NSLog(@"Enter contact id number:");
            char input[255];
            fgets(input, 255, stdin);
            NSString *idValue = [NSString stringWithCString:input encoding: NSUTF8StringEncoding];
            [idValue stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
            
            
            [newContactArray showContactById:[idValue intValue]];
        }
        
        
        
        
        
        
        
        
        
        
        
       
    }//End of while loop
    
    
    
    
    
    
    
    
    
    
    return 0;
}
