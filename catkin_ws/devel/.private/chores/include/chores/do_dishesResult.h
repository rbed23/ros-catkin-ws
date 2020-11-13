// Generated by gencpp from file chores/do_dishesResult.msg
// DO NOT EDIT!


#ifndef CHORES_MESSAGE_DO_DISHESRESULT_H
#define CHORES_MESSAGE_DO_DISHESRESULT_H


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
struct do_dishesResult_
{
  typedef do_dishesResult_<ContainerAllocator> Type;

  do_dishesResult_()
    : total_dishes_cleaned(0)  {
    }
  do_dishesResult_(const ContainerAllocator& _alloc)
    : total_dishes_cleaned(0)  {
  (void)_alloc;
    }



   typedef uint32_t _total_dishes_cleaned_type;
  _total_dishes_cleaned_type total_dishes_cleaned;





  typedef boost::shared_ptr< ::chores::do_dishesResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::chores::do_dishesResult_<ContainerAllocator> const> ConstPtr;

}; // struct do_dishesResult_

typedef ::chores::do_dishesResult_<std::allocator<void> > do_dishesResult;

typedef boost::shared_ptr< ::chores::do_dishesResult > do_dishesResultPtr;
typedef boost::shared_ptr< ::chores::do_dishesResult const> do_dishesResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::chores::do_dishesResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::chores::do_dishesResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::chores::do_dishesResult_<ContainerAllocator1> & lhs, const ::chores::do_dishesResult_<ContainerAllocator2> & rhs)
{
  return lhs.total_dishes_cleaned == rhs.total_dishes_cleaned;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::chores::do_dishesResult_<ContainerAllocator1> & lhs, const ::chores::do_dishesResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace chores

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::chores::do_dishesResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::chores::do_dishesResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::chores::do_dishesResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::chores::do_dishesResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::chores::do_dishesResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::chores::do_dishesResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::chores::do_dishesResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "58faa44dda59c6545bea63ff57491cbe";
  }

  static const char* value(const ::chores::do_dishesResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x58faa44dda59c654ULL;
  static const uint64_t static_value2 = 0x5bea63ff57491cbeULL;
};

template<class ContainerAllocator>
struct DataType< ::chores::do_dishesResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "chores/do_dishesResult";
  }

  static const char* value(const ::chores::do_dishesResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::chores::do_dishesResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define the result\n"
"uint32 total_dishes_cleaned\n"
;
  }

  static const char* value(const ::chores::do_dishesResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::chores::do_dishesResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.total_dishes_cleaned);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct do_dishesResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::chores::do_dishesResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::chores::do_dishesResult_<ContainerAllocator>& v)
  {
    s << indent << "total_dishes_cleaned: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.total_dishes_cleaned);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CHORES_MESSAGE_DO_DISHESRESULT_H