/*
 * Copyright 2018 Google
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import "FIRGameCenterAuthCredential.h"

#import "FIRAuthExceptionUtils.h"
#import "FIRAuthCredential_Internal.h"
#import "FIRGameCenterAuthProvider.h"
#import "FIRVerifyAssertionRequest.h"

@implementation FIRGameCenterAuthCredential

- (nullable instancetype)initWithProvider:(NSString *)provider {
  [FIRAuthExceptionUtils raiseMethodNotImplementedExceptionWithReason:
     @"Please call the designated initializer."];
  return nil;
}

- (nullable instancetype)initWithPlayerID:(NSString *)playerID
                             publicKeyURL:(NSURL *)publicKeyURL
                                signature:(NSData *)signature
                                     salt:(NSData *)salt
                                timestamp:(uint64_t)timestamp
                              displayName:(NSString *)displayName {
  self = [super initWithProvider:FIRGameCenterAuthProviderID];
  if (self) {
    _playerID = [playerID copy];
    _publicKeyURL = [publicKeyURL copy];
    _signature = [signature copy];
    _salt = [salt copy];
    _timestamp = timestamp;
    _displayName = [displayName copy];
  }
  return self;
}

- (void)prepareVerifyAssertionRequest:(FIRVerifyAssertionRequest *)request {
  [FIRAuthExceptionUtils raiseMethodNotImplementedExceptionWithReason:
      @"Attempt to call prepareVerifyAssertionRequest: on a FIRGameCenterAuthCredential."];
}

@end
