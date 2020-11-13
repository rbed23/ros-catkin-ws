// Generated by gencpp from file chores/do_dishesActionGoal.msg
// DO NOT EDIT!


#ifndef CHORES_MESSAGE_DO_DISHESACTIONGOAL_H
#define CHORES_MESSAGE_DO_DISHESACTIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <chores/do_dishesGoal.h>

namespace chores
{
template <class ContainerAllocator>
struct do_dishesActionGoal_
{
  typedef do_dishesActionGoal_<ContainerAllocator> Type;

  do_dishesActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  do_dishesActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::chores::do_dishesGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::chores::do_dishesActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::chores::do_dishesActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct do_dishesActionGoal_

typedef ::chores::do_dishesActionGoal_<std::allocator<void> > do_dishesActionGoal;

typedef boost::shared_ptr< ::chores::do_dishesActionGoal > do_dishesActionGoalPtr;
typedef boost::shared_ptr< ::chores::do_dishesActionGoal const> do_dishesActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::chores::do_dishesActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::chores::do_dishesActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::chores::do_dishesActionGoal_<ContainerAllocator1> & lhs, const ::chores::do_dishesActionGoal_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.goal_id == rhs.goal_id &&
    lhs.goal == rhs.goal;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::chores::do_dishesActionGoal_<ContainerAllocator1> & lhs, const ::chores::do_dishesActionGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace chores

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::chores::do_dishesActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::chores::do_dishesActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::chores::do_dishesActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::chores::do_dishesActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::chores::do_dishesActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::chores::do_dishesActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::chores::do_dishesActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "83f2a96811c1f4ed2d6e73eb983a3cb9";
  }

  static const char* value(const ::chores::do_dishesActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x83f2a96811c1f4edULL;
  static const uint64_t static_value2 = 0x2d6e73eb983a3cb9ULL;
};

template<class ContainerAllocator>
struct DataType< ::chores::do_dishesActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "chores/do_dishesActionGoal";
  }

  static const char* value(const ::chores::do_dishesActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::chores::do_dishesActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"do_dishesGoal goal\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: chores/do_dishesGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define the goal\n"
"uint32 dishwasher_id  # Specify which dishwasher we want to use\n"
;
  }

  static const char* value(const ::chores::do_dishesActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::chores::do_dishesActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct do_dishesActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::chores::do_dishesActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::chores::do_dishesActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::chores::do_dishesGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CHORES_MESSAGE_DO_DISHESACTIONGOAL_H