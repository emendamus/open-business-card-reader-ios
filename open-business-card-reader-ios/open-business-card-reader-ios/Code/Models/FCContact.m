/*
	FCContact.m

	Created by Duane Schleen on 12/17/13.
	Copyright (c) 2013 FullContact Inc.

	Licensed under the Apache License, Version 2.0 (the "License");
	you may not use this file except in compliance with the License.
	you may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

	Unless required by applicable law or agreed to in writing, software
	distributed under the License is distributed on an "AS IS" BASIS,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	See the License for the specific language governing permissions and
	limitations under the License.
 */

#import "FCContact.h"

#import "FCAccount.h"
#import "FCAddress.h"
#import "FCEmail.h"
#import "FCIm.h"
#import "FCName.h"
#import "FCOrganization.h"
#import "FCPhoneNumber.h"
#import "FCPhoto.h"
#import "FCUrl.h"

@implementation FCContact

+ (NSArray *)mappingInfo
{
	return @[
			[[FCMappingInfo mappingWithKey:@"accounts"] collectionClass:[FCAccount class]],
			[[FCMappingInfo mappingWithKey:@"addresses"] collectionClass:[FCAddress class]],
			[[FCMappingInfo mappingWithKey:@"emails"] collectionClass:[FCEmail class]],
			[[FCMappingInfo mappingWithKey:@"ims"] collectionClass:[FCIm class]],
			[[FCMappingInfo mappingWithKey:@"name"] class:[FCName class]],
			[[FCMappingInfo mappingWithKey:@"organizations"] collectionClass:[FCOrganization class]],
			[[FCMappingInfo mappingWithKey:@"phoneNumbers"] collectionClass:[FCPhoneNumber class]],
			[[FCMappingInfo mappingWithKey:@"photos"] collectionClass:[FCPhoto class]],
			[[FCMappingInfo mappingWithKey:@"urls"] collectionClass:[FCUrl class]]
	];
}

@end
