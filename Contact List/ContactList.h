//
//  ContactList.h
//  Contact List
//
//  Created by Thiago Hissa on 2017-06-27.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject
@property NSMutableArray *contactArray;
-(void)addContact:(Contact *)newContact;
@end
