// Generated by gencpp from file chores/fibonacciResult.msg
// DO NOT EDIT!


#ifndef CHORES_MESSAGE_FIBONACCIRESULT_H
#define CHORES_MESSAGE_FIBONACCIRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace chores
{
template <class ContainerAllocator>
struct fibonacciResult_
{
  typedef fibonacciResult_<ContainerAllocator> Type;

  fibonacciResult_()
    : sequence()  {
    }
  fibonacciResult_(const ContainerAllocator& _alloc)
    : sequence(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  _sequence_type;
  _sequence_type sequence;





  typedef boost::shared_ptr< ::chores::fibonacciResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::chores::fibonacciResult_<ContainerAllocator> const> ConstPtr;

}; // struct fibonacciResult_

typedef ::chores::fibonacciResult_<std::allocator<void> > fibonacciResult;

typedef boost::shared_ptr< ::chores::fibonacciResult > fibonacciResultPtr;
typedef boost::shared_ptr< ::chores::fibonacciResult const> fibonacciResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::chores::fibonacciResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::chores::fibonacciResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::chores::fibonacciResult_<ContainerAllocator1> & lhs, const ::chores::fibonacciResult_<ContainerAllocator2> & rhs)
{
  return lhs.sequence == rhs.sequence;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::chores::fibonacciResult_<ContainerAllocator1> & lhs, const ::chores::fibonacciResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace chores

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::chores::fibonacciResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::chores::fibonacciResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::chores::fibonacciResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::chores::fibonacciResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::chores::fibonacciResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::chores::fibonacciResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::chores::fibonacciResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b81e37d2a31925a0e8ae261a8699cb79";
  }

  static const char* value(const ::chores::fibonacciResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb81e37d2a31925a0ULL;
  static const uint64_t static_value2 = 0xe8ae261a8699cb79ULL;
};

template<class ContainerAllocator>
struct DataType< ::chores::fibonacciResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "chores/fibonacciResult";
  }

  static const char* value(const ::chores::fibonacciResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::chores::fibonacciResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#result definition\n"
"int32[] sequence\n"
;
  }

  static const char* value(const ::chores::fibonacciResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::chores::fibonacciResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sequence);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct fibonacciResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::chores::fibonacciResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::chores::fibonacciResult_<ContainerAllocator>& v)
  {
    s << indent << "sequence[]" << std::endl;
    for (size_t i = 0; i < v.sequence.size(); ++i)
    {
      s << indent << "  sequence[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.sequence[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CHORES_MESSAGE_FIBONACCIRESULT_H
