//
//  InputCollector.h
//  Contact List
//
//  Created by Thiago Hissa on 2017-06-27.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

@property (nonatomic) NSString *quitProgram;

-(NSString *)inputForPrompt:(NSString *)promptString;




@end
