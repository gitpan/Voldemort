package Voldemort::ProtoBuff::Spec2;
##
## This file was generated by Google::ProtocolBuffers (0.08)
## on Wed Apr 28 16:11:35 2010
##
use strict;
use warnings;
use Google::ProtocolBuffers;
{

    unless ( Voldemort::ProtoBuff::Spec2::RequestType->can('_pb_fields_list') )
    {
        Google::ProtocolBuffers->create_enum(
            'Voldemort::ProtoBuff::Spec2::RequestType',
            [
                [ 'GET',         0 ],
                [ 'GET_ALL',     1 ],
                [ 'PUT',         2 ],
                [ 'DELETE',      3 ],
                [ 'GET_VERSION', 4 ],

            ]
        );
    }

    unless ( Voldemort::ProtoBuff::Spec2::GetRequest->can('_pb_fields_list') ) {
        Google::ProtocolBuffers->create_message(
            'Voldemort::ProtoBuff::Spec2::GetRequest',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(),
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(),
                    'key',
                    1,
                    undef
                ],

            ],
            { 'create_accessors' => 1, }
        );
    }

    unless ( Voldemort::ProtoBuff::Spec2::ClockEntry->can('_pb_fields_list') ) {
        Google::ProtocolBuffers->create_message(
            'Voldemort::ProtoBuff::Spec2::ClockEntry',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(),
                    Google::ProtocolBuffers::Constants::TYPE_INT32(),
                    'node_id',
                    1,
                    undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(),
                    Google::ProtocolBuffers::Constants::TYPE_INT64(),
                    'version',
                    2,
                    undef
                ],

            ],
            { 'create_accessors' => 1, }
        );
    }

    unless (
        Voldemort::ProtoBuff::Spec2::KeyedVersions->can('_pb_fields_list') )
    {
        Google::ProtocolBuffers->create_message(
            'Voldemort::ProtoBuff::Spec2::KeyedVersions',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(),
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(),
                    'key',
                    1,
                    undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_REPEATED(),
                    'Voldemort::ProtoBuff::Spec2::Versioned',
                    'versions',
                    2,
                    undef
                ],

            ],
            { 'create_accessors' => 1, }
        );
    }

    unless ( Voldemort::ProtoBuff::Spec2::PutRequest->can('_pb_fields_list') ) {
        Google::ProtocolBuffers->create_message(
            'Voldemort::ProtoBuff::Spec2::PutRequest',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(),
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(),
                    'key',
                    1,
                    undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(),
                    'Voldemort::ProtoBuff::Spec2::Versioned',
                    'versioned',
                    2,
                    undef
                ],

            ],
            { 'create_accessors' => 1, }
        );
    }

    unless (
        Voldemort::ProtoBuff::Spec2::GetAllRequest->can('_pb_fields_list') )
    {
        Google::ProtocolBuffers->create_message(
            'Voldemort::ProtoBuff::Spec2::GetAllRequest',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REPEATED(),
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(),
                    'keys',
                    1,
                    undef
                ],

            ],
            { 'create_accessors' => 1, }
        );
    }

    unless (
        Voldemort::ProtoBuff::Spec2::DeleteRequest->can('_pb_fields_list') )
    {
        Google::ProtocolBuffers->create_message(
            'Voldemort::ProtoBuff::Spec2::DeleteRequest',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(),
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(),
                    'key',
                    1,
                    undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(),
                    'Voldemort::ProtoBuff::Spec2::VectorClock',
                    'version',
                    2,
                    undef
                ],

            ],
            { 'create_accessors' => 1, }
        );
    }

    unless ( Voldemort::ProtoBuff::Spec2::GetResponse->can('_pb_fields_list') )
    {
        Google::ProtocolBuffers->create_message(
            'Voldemort::ProtoBuff::Spec2::GetResponse',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REPEATED(),
                    'Voldemort::ProtoBuff::Spec2::Versioned',
                    'versioned',
                    1,
                    undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(),
                    'Voldemort::ProtoBuff::Spec2::Error',
                    'error', 2, undef
                ],

            ],
            { 'create_accessors' => 1, }
        );
    }

    unless ( Voldemort::ProtoBuff::Spec2::Error->can('_pb_fields_list') ) {
        Google::ProtocolBuffers->create_message(
            'Voldemort::ProtoBuff::Spec2::Error',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(),
                    Google::ProtocolBuffers::Constants::TYPE_INT32(),
                    'error_code',
                    1,
                    undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(),
                    Google::ProtocolBuffers::Constants::TYPE_STRING(),
                    'error_message',
                    2,
                    undef
                ],

            ],
            { 'create_accessors' => 1, }
        );
    }

    unless (
        Voldemort::ProtoBuff::Spec2::GetAllResponse->can('_pb_fields_list') )
    {
        Google::ProtocolBuffers->create_message(
            'Voldemort::ProtoBuff::Spec2::GetAllResponse',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REPEATED(),
                    'Voldemort::ProtoBuff::Spec2::KeyedVersions',
                    'values',
                    1,
                    undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(),
                    'Voldemort::ProtoBuff::Spec2::Error',
                    'error', 2, undef
                ],

            ],
            { 'create_accessors' => 1, }
        );
    }

    unless (
        Voldemort::ProtoBuff::Spec2::GetVersionResponse->can('_pb_fields_list')
      )
    {
        Google::ProtocolBuffers->create_message(
            'Voldemort::ProtoBuff::Spec2::GetVersionResponse',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REPEATED(),
                    'Voldemort::ProtoBuff::Spec2::VectorClock',
                    'versions',
                    1,
                    undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(),
                    'Voldemort::ProtoBuff::Spec2::Error',
                    'error', 2, undef
                ],

            ],
            { 'create_accessors' => 1, }
        );
    }

    unless (
        Voldemort::ProtoBuff::Spec2::VoldemortRequest->can('_pb_fields_list') )
    {
        Google::ProtocolBuffers->create_message(
            'Voldemort::ProtoBuff::Spec2::VoldemortRequest',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(),
                    'Voldemort::ProtoBuff::Spec2::RequestType',
                    'type', 1, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(),
                    Google::ProtocolBuffers::Constants::TYPE_BOOL(),
                    'should_route',
                    2,
                    0
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(),
                    Google::ProtocolBuffers::Constants::TYPE_STRING(),
                    'store',
                    3,
                    undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(),
                    'Voldemort::ProtoBuff::Spec2::GetRequest',
                    'get', 4, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(),
                    'Voldemort::ProtoBuff::Spec2::GetAllRequest',
                    'getAll',
                    5,
                    undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(),
                    'Voldemort::ProtoBuff::Spec2::PutRequest',
                    'put', 6, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(),
                    'Voldemort::ProtoBuff::Spec2::DeleteRequest',
                    'delete',
                    7,
                    undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(),
                    Google::ProtocolBuffers::Constants::TYPE_INT32(),
                    'requestRouteType',
                    8,
                    undef
                ],

            ],
            { 'create_accessors' => 1, }
        );
    }

    unless (
        Voldemort::ProtoBuff::Spec2::DeleteResponse->can('_pb_fields_list') )
    {
        Google::ProtocolBuffers->create_message(
            'Voldemort::ProtoBuff::Spec2::DeleteResponse',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(),
                    Google::ProtocolBuffers::Constants::TYPE_BOOL(),
                    'success',
                    1,
                    undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(),
                    'Voldemort::ProtoBuff::Spec2::Error',
                    'error', 2, undef
                ],

            ],
            { 'create_accessors' => 1, }
        );
    }

    unless ( Voldemort::ProtoBuff::Spec2::VectorClock->can('_pb_fields_list') )
    {
        Google::ProtocolBuffers->create_message(
            'Voldemort::ProtoBuff::Spec2::VectorClock',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REPEATED(),
                    'Voldemort::ProtoBuff::Spec2::ClockEntry',
                    'entries',
                    1,
                    undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(),
                    Google::ProtocolBuffers::Constants::TYPE_INT64(),
                    'timestamp',
                    2,
                    undef
                ],

            ],
            { 'create_accessors' => 1, }
        );
    }

    unless ( Voldemort::ProtoBuff::Spec2::PutResponse->can('_pb_fields_list') )
    {
        Google::ProtocolBuffers->create_message(
            'Voldemort::ProtoBuff::Spec2::PutResponse',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(),
                    'Voldemort::ProtoBuff::Spec2::Error',
                    'error', 1, undef
                ],

            ],
            { 'create_accessors' => 1, }
        );
    }

    unless ( Voldemort::ProtoBuff::Spec2::Versioned->can('_pb_fields_list') ) {
        Google::ProtocolBuffers->create_message(
            'Voldemort::ProtoBuff::Spec2::Versioned',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(),
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(),
                    'value',
                    1,
                    undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(),
                    'Voldemort::ProtoBuff::Spec2::VectorClock',
                    'version',
                    2,
                    undef
                ],

            ],
            { 'create_accessors' => 1, }
        );
    }

}
1;