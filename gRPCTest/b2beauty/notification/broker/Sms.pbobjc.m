// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: b2beauty/notification/broker/sms.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

 #import <B2Beauty-ProtoRPC/Sms.pbobjc.h>
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - SmsRoot

@implementation SmsRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

@end

#pragma mark - SmsRoot_FileDescriptor

static GPBFileDescriptor *SmsRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"b2beauty.notification.broker"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - Sms

@implementation Sms

@dynamic priority;
@dynamic from;
@dynamic to;
@dynamic message;

typedef struct Sms__storage_ {
  uint32_t _has_storage_[1];
  Sms_Priority priority;
  NSString *from;
  NSString *to;
  NSString *message;
} Sms__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "priority",
        .dataTypeSpecific.enumDescFunc = Sms_Priority_EnumDescriptor,
        .number = Sms_FieldNumber_Priority,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Sms__storage_, priority),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "from",
        .dataTypeSpecific.className = NULL,
        .number = Sms_FieldNumber_From,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Sms__storage_, from),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "to",
        .dataTypeSpecific.className = NULL,
        .number = Sms_FieldNumber_To,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Sms__storage_, to),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "message",
        .dataTypeSpecific.className = NULL,
        .number = Sms_FieldNumber_Message,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(Sms__storage_, message),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Sms class]
                                     rootClass:[SmsRoot class]
                                          file:SmsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Sms__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t Sms_Priority_RawValue(Sms *message) {
  GPBDescriptor *descriptor = [Sms descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Sms_FieldNumber_Priority];
  return GPBGetMessageInt32Field(message, field);
}

void SetSms_Priority_RawValue(Sms *message, int32_t value) {
  GPBDescriptor *descriptor = [Sms descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Sms_FieldNumber_Priority];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum Sms_Priority

GPBEnumDescriptor *Sms_Priority_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "Normal\000High\000";
    static const int32_t values[] = {
        Sms_Priority_Normal,
        Sms_Priority_High,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(Sms_Priority)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:Sms_Priority_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL Sms_Priority_IsValidValue(int32_t value__) {
  switch (value__) {
    case Sms_Priority_Normal:
    case Sms_Priority_High:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - SmsReply

@implementation SmsReply

@dynamic id_p;

typedef struct SmsReply__storage_ {
  uint32_t _has_storage_[1];
  NSString *id_p;
} SmsReply__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "id_p",
        .dataTypeSpecific.className = NULL,
        .number = SmsReply_FieldNumber_Id_p,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(SmsReply__storage_, id_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[SmsReply class]
                                     rootClass:[SmsRoot class]
                                          file:SmsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(SmsReply__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
