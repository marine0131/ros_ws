; Auto-generated. Do not edit!


(cl:in-package my_action_lib-msg)


;//! \htmlinclude DoDishesAction.msg.html

(cl:defclass <DoDishesAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type my_action_lib-msg:DoDishesActionGoal
    :initform (cl:make-instance 'my_action_lib-msg:DoDishesActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type my_action_lib-msg:DoDishesActionResult
    :initform (cl:make-instance 'my_action_lib-msg:DoDishesActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type my_action_lib-msg:DoDishesActionFeedback
    :initform (cl:make-instance 'my_action_lib-msg:DoDishesActionFeedback)))
)

(cl:defclass DoDishesAction (<DoDishesAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DoDishesAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DoDishesAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_action_lib-msg:<DoDishesAction> is deprecated: use my_action_lib-msg:DoDishesAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <DoDishesAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_action_lib-msg:action_goal-val is deprecated.  Use my_action_lib-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <DoDishesAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_action_lib-msg:action_result-val is deprecated.  Use my_action_lib-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <DoDishesAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_action_lib-msg:action_feedback-val is deprecated.  Use my_action_lib-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DoDishesAction>) ostream)
  "Serializes a message object of type '<DoDishesAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DoDishesAction>) istream)
  "Deserializes a message object of type '<DoDishesAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DoDishesAction>)))
  "Returns string type for a message object of type '<DoDishesAction>"
  "my_action_lib/DoDishesAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DoDishesAction)))
  "Returns string type for a message object of type 'DoDishesAction"
  "my_action_lib/DoDishesAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DoDishesAction>)))
  "Returns md5sum for a message object of type '<DoDishesAction>"
  "7cf97263ad11380965ab1a0c44b4a7cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DoDishesAction)))
  "Returns md5sum for a message object of type 'DoDishesAction"
  "7cf97263ad11380965ab1a0c44b4a7cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DoDishesAction>)))
  "Returns full string definition for message of type '<DoDishesAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%DoDishesActionGoal action_goal~%DoDishesActionResult action_result~%DoDishesActionFeedback action_feedback~%~%================================================================================~%MSG: my_action_lib/DoDishesActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%DoDishesGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: my_action_lib/DoDishesGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# define a goal~%uint32 dishwasher_id~%~%================================================================================~%MSG: my_action_lib/DoDishesActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%DoDishesResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: my_action_lib/DoDishesResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# define the result~%uint32 total_dishes_cleaned~%~%================================================================================~%MSG: my_action_lib/DoDishesActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%DoDishesFeedback feedback~%~%================================================================================~%MSG: my_action_lib/DoDishesFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# define a feedback msg~%float32 percent_complete~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DoDishesAction)))
  "Returns full string definition for message of type 'DoDishesAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%DoDishesActionGoal action_goal~%DoDishesActionResult action_result~%DoDishesActionFeedback action_feedback~%~%================================================================================~%MSG: my_action_lib/DoDishesActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%DoDishesGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: my_action_lib/DoDishesGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# define a goal~%uint32 dishwasher_id~%~%================================================================================~%MSG: my_action_lib/DoDishesActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%DoDishesResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: my_action_lib/DoDishesResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# define the result~%uint32 total_dishes_cleaned~%~%================================================================================~%MSG: my_action_lib/DoDishesActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%DoDishesFeedback feedback~%~%================================================================================~%MSG: my_action_lib/DoDishesFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# define a feedback msg~%float32 percent_complete~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DoDishesAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DoDishesAction>))
  "Converts a ROS message object to a list"
  (cl:list 'DoDishesAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))
