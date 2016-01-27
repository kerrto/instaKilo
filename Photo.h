//
//  Photo.h
//  instaKilo
//
//  Created by Kerry Toonen on 2016-01-27.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Photo : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *group;
@property (nonatomic, strong) NSString *location;
@property (nonatomic, strong) UIImage *photo;

-(instancetype) initWithTitle:(NSString *)title Group:(NSString*)group Location:(NSString *)location Image:(NSString*)photo;


@end
