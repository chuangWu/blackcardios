//
//  AppAPIHelper.m
//  mgame648
//
//  Created by simon on 15/11/24.
//  Copyright © 2015年 yaowang. All rights reserved.
//

#import "AppAPIHelper.h"
#import "HttpMyAndUser.h"
#import "HttpHomePage.h"


@implementation AppAPIHelper
{
    id<MyAndUserAPI> _myAndUserAPI;
    id<HomePageAPI>_myHomePageAPI;


}

HELPER_SHARED(AppAPIHelper);

- (instancetype)init {
    self = [super init];
    if (self) {
        _myAndUserAPI = [[HttpMyAndUser alloc] init];
        _myHomePageAPI = [[HttpHomePage alloc]init];
    }
    
    return self; 
}

- (id <MyAndUserAPI>)getMyAndUserAPI
{
    return _myAndUserAPI;
}

- (id <HomePageAPI>)getHomePageAPI
{
    return _myHomePageAPI;
}

@end