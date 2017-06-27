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









// ADD contact to Mutable array
-(void)addContact:(Contact *)newContact {
    
    newContact.name = [newContact.name substringToIndex:newContact.name.length-1];
    newContact.email = [newContact.email substringToIndex:newContact.email.length-1];
    
    
    [_contactArray addObject:[NSString stringWithFormat: @"%u: Name = %@ | Email = %@", arc4random_uniform(9999)+1000, newContact.name, newContact.email]];
          
}






// Search and show contact with specific id number (id number defined at ContactList when adding to array)
-(void)showContactById: (int)idValue{
    
    NSRange range = NSMakeRange(0, 4);
    
    for(int i = 0; i < [_contactArray count]; i++){
        
        int first4Numbers = [[_contactArray[i] substringWithRange:range] intValue];
        
        if(first4Numbers == idValue){
            NSLog(@"Contact found: %@", _contactArray[i]);
            
        }
        else{
            NSLog(@"Contact not found");
        }
    }
}











@end
