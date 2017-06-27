//
//  ContactList.m
//  Contact List
//
//  Created by Thiago Hissa on 2017-06-27.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _contactArray = [NSMutableArray array]; 
        
    }
    return self;
}




-(void)addContact:(Contact *)newContact {
    
    newContact.name = [newContact.name substringToIndex:newContact.name.length-1];
    newContact.email = [newContact.email substringToIndex:newContact.email.length-1];
    
    
    [_contactArray addObject:[NSString stringWithFormat: @"%u: Name = %@ | Email = %@", arc4random_uniform(9999)+1000, newContact.name, newContact.email]];
          
}








@end
