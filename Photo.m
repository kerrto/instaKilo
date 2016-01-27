//
//  Photo.m
//  instaKilo
//
//  Created by Kerry Toonen on 2016-01-27.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import "Photo.h"

@implementation Photo


-(instancetype) initWithTitle:(NSString *)title Group:(NSString*)group Location:(NSString *)location Image:(NSString*)photo {
    self=[super init];
    if (self){
        _title=title;
        _group=group;
        _photo=[UIImage imageNamed:photo];
        _location=location;
    }
    return self;
}


@end
