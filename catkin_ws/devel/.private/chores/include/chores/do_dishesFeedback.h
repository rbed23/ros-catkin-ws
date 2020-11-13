// Generated by gencpp from file chores/do_dishesFeedback.msg
// DO NOT EDIT!


#ifndef CHORES_MESSAGE_DO_DISHESFEEDBACK_H
#define CHORES_MESSAGE_DO_DISHESFEEDBACK_H


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
struct do_dishesFeedback_
{
  typedef do_dishesFeedback_<ContainerAllocator> Type;

  do_dishesFeedback_()
    : percent_complete(0.0)  {
    }
  do_dishesFeedback_(const ContainerAllocator& _alloc)
    : percent_complete(0.0)  {
  (void)_alloc;
    }



   typedef float _percent_complete_type;
  _percent_complete_type percent_complete;





  typedef boost::shared_ptr< ::chores::do_dishesFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::chores::do_dishesFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct do_dishesFeedback_

typedef ::chores::do_dishesFeedback_<std::allocator<void> > do_dishesFeedback;

typedef boost::shared_ptr< ::chores::do_dishesFeedback > do_dishesFeedbackPtr;
typedef boost::shared_ptr< ::chores::do_dishesFeedback const> do_dishesFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::chores::do_dishesFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::chores::do_dishesFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::chores::do_dishesFeedback_<ContainerAllocator1> & lhs, const ::chores::do_dishesFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.percent_complete == rhs.percent_complete;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::chores::do_dishesFeedback_<ContainerAllocator1> & lhs, const ::chores::do_dishesFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace chores

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::chores::do_dishesFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::chores::do_dishesFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::chores::do_dishesFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::chores::do_dishesFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::chores::do_dishesFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::chores::do_dishesFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::chores::do_dishesFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d342375c60a5a58d3bc32664070a1368";
  }

  static const char* value(const ::chores::do_dishesFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd342375c60a5a58dULL;
  static const uint64_t static_value2 = 0x3bc32664070a1368ULL;
};

template<class ContainerAllocator>
struct DataType< ::chores::do_dishesFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "chores/do_dishesFeedback";
  }

  static const char* value(const ::chores::do_dishesFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::chores::do_dishesFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define a feedback message\n"
"float32 percent_complete\n"
;
  }

  static const char* value(const ::chores::do_dishesFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::chores::do_dishesFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.percent_complete);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct do_dishesFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::chores::do_dishesFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::chores::do_dishesFeedback_<ContainerAllocator>& v)
  {
    s << indent << "percent_complete: ";
    Printer<float>::stream(s, indent + "  ", v.percent_complete);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CHORES_MESSAGE_DO_DISHESFEEDBACK_H