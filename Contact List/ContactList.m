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

-(void)addContact:(Contact *)newContact {
    
    [_contactArray addObject:newContact];
    
}



@end
