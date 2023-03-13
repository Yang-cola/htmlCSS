// Copyright 2016 Proyectos y Sistemas de Mantenimiento SL (eProsima).
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/*!
 * @file operation.i
 * This header file contains the SWIG interface of the described types in the IDL file.
 *
 * This file was generated by the tool gen.
 */

%module operation

// SWIG helper modules
%include "stdint.i"
%include "std_string.i"
%include "std_vector.i"
%include "std_array.i"
%include "std_map.i"
%include "typemaps.i"

// Assignemt operators are ignored, as there is no such thing in Python.
// Trying to export them issues a warning
%ignore *::operator=;

// Macro declarations
// Any macro used on the Fast DDS header files will give an error if it is not redefined here
#define RTPS_DllAPI
#define eProsima_user_DllExport


%{
#include "operation.h"

#include <fastdds/dds/core/LoanableSequence.hpp>
%}

%import(module="fastdds") "fastdds/dds/core/LoanableCollection.hpp"
%import(module="fastdds") "fastdds/dds/core/LoanableTypedCollection.hpp"
%import(module="fastdds") "fastdds/dds/core/LoanableSequence.hpp"


////////////////////////////////////////////////////////
// Binding for class RequestType
////////////////////////////////////////////////////////

// Ignore overloaded methods that have no application on Python
// Otherwise they will issue a warning
%ignore RequestType::RequestType(RequestType&&);

// Overloaded getter methods shadow each other and are equivalent in python
// Avoid a warning ignoring all but one
%ignore RequestType::operation(OperationType&&);

// Overloaded getter methods shadow each other and are equivalent in python
// Const accesors produced constant enums instead of arrays/dictionaries when used
// We ignore them to prevent this
%ignore RequestType::operation();
%rename("%s") RequestType::operation() const;

%ignore RequestType::x(int32_t&&);

// Overloaded getter methods shadow each other and are equivalent in python
// Const accesors produced constant enums instead of arrays/dictionaries when used
// We ignore them to prevent this
%ignore RequestType::x();
%rename("%s") RequestType::x() const;

%ignore RequestType::y(int32_t&&);

// Overloaded getter methods shadow each other and are equivalent in python
// Const accesors produced constant enums instead of arrays/dictionaries when used
// We ignore them to prevent this
%ignore RequestType::y();
%rename("%s") RequestType::y() const;


%template(_RequestTypeSeq) eprosima::fastdds::dds::LoanableTypedCollection<RequestType, std::false_type>;
%template(RequestTypeSeq) eprosima::fastdds::dds::LoanableSequence<RequestType, std::false_type>;
%extend eprosima::fastdds::dds::LoanableSequence<RequestType, std::false_type>
{
    size_t __len__() const
    {
        return self->length();
    }

    const RequestType& __getitem__(size_t i) const
    {
        return (*self)[i];
    }
}

////////////////////////////////////////////////////////
// Binding for class ReplyType
////////////////////////////////////////////////////////

// Ignore overloaded methods that have no application on Python
// Otherwise they will issue a warning
%ignore ReplyType::ReplyType(ReplyType&&);

// Overloaded getter methods shadow each other and are equivalent in python
// Avoid a warning ignoring all but one
%ignore ReplyType::z(int64_t&&);

// Overloaded getter methods shadow each other and are equivalent in python
// Const accesors produced constant enums instead of arrays/dictionaries when used
// We ignore them to prevent this
%ignore ReplyType::z();
%rename("%s") ReplyType::z() const;


%template(_ReplyTypeSeq) eprosima::fastdds::dds::LoanableTypedCollection<ReplyType, std::false_type>;
%template(ReplyTypeSeq) eprosima::fastdds::dds::LoanableSequence<ReplyType, std::false_type>;
%extend eprosima::fastdds::dds::LoanableSequence<ReplyType, std::false_type>
{
    size_t __len__() const
    {
        return self->length();
    }

    const ReplyType& __getitem__(size_t i) const
    {
        return (*self)[i];
    }
}


// Include the class interfaces
%include "operation.h"

// Include the corresponding TopicDataType
%include "operationPubSubTypes.i"