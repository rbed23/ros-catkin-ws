
(cl:in-package :asdf)

(defsystem "chores-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "do_dishesAction" :depends-on ("_package_do_dishesAction"))
    (:file "_package_do_dishesAction" :depends-on ("_package"))
    (:file "do_dishesActionFeedback" :depends-on ("_package_do_dishesActionFeedback"))
    (:file "_package_do_dishesActionFeedback" :depends-on ("_package"))
    (:file "do_dishesActionGoal" :depends-on ("_package_do_dishesActionGoal"))
    (:file "_package_do_dishesActionGoal" :depends-on ("_package"))
    (:file "do_dishesActionResult" :depends-on ("_package_do_dishesActionResult"))
    (:file "_package_do_dishesActionResult" :depends-on ("_package"))
    (:file "do_dishesFeedback" :depends-on ("_package_do_dishesFeedback"))
    (:file "_package_do_dishesFeedback" :depends-on ("_package"))
    (:file "do_dishesGoal" :depends-on ("_package_do_dishesGoal"))
    (:file "_package_do_dishesGoal" :depends-on ("_package"))
    (:file "do_dishesResult" :depends-on ("_package_do_dishesResult"))
    (:file "_package_do_dishesResult" :depends-on ("_package"))
    (:file "fibonacciAction" :depends-on ("_package_fibonacciAction"))
    (:file "_package_fibonacciAction" :depends-on ("_package"))
    (:file "fibonacciActionFeedback" :depends-on ("_package_fibonacciActionFeedback"))
    (:file "_package_fibonacciActionFeedback" :depends-on ("_package"))
    (:file "fibonacciActionGoal" :depends-on ("_package_fibonacciActionGoal"))
    (:file "_package_fibonacciActionGoal" :depends-on ("_package"))
    (:file "fibonacciActionResult" :depends-on ("_package_fibonacciActionResult"))
    (:file "_package_fibonacciActionResult" :depends-on ("_package"))
    (:file "fibonacciFeedback" :depends-on ("_package_fibonacciFeedback"))
    (:file "_package_fibonacciFeedback" :depends-on ("_package"))
    (:file "fibonacciGoal" :depends-on ("_package_fibonacciGoal"))
    (:file "_package_fibonacciGoal" :depends-on ("_package"))
    (:file "fibonacciResult" :depends-on ("_package_fibonacciResult"))
    (:file "_package_fibonacciResult" :depends-on ("_package"))
  ))