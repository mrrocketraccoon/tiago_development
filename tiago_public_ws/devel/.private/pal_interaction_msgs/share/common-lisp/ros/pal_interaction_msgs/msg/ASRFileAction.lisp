; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-msg)


;//! \htmlinclude ASRFileAction.msg.html

(cl:defclass <ASRFileAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type pal_interaction_msgs-msg:ASRFileActionGoal
    :initform (cl:make-instance 'pal_interaction_msgs-msg:ASRFileActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type pal_interaction_msgs-msg:ASRFileActionResult
    :initform (cl:make-instance 'pal_interaction_msgs-msg:ASRFileActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type pal_interaction_msgs-msg:ASRFileActionFeedback
    :initform (cl:make-instance 'pal_interaction_msgs-msg:ASRFileActionFeedback)))
)

(cl:defclass ASRFileAction (<ASRFileAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ASRFileAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ASRFileAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-msg:<ASRFileAction> is deprecated: use pal_interaction_msgs-msg:ASRFileAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <ASRFileAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:action_goal-val is deprecated.  Use pal_interaction_msgs-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <ASRFileAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:action_result-val is deprecated.  Use pal_interaction_msgs-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <ASRFileAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:action_feedback-val is deprecated.  Use pal_interaction_msgs-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ASRFileAction>) ostream)
  "Serializes a message object of type '<ASRFileAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ASRFileAction>) istream)
  "Deserializes a message object of type '<ASRFileAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ASRFileAction>)))
  "Returns string type for a message object of type '<ASRFileAction>"
  "pal_interaction_msgs/ASRFileAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ASRFileAction)))
  "Returns string type for a message object of type 'ASRFileAction"
  "pal_interaction_msgs/ASRFileAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ASRFileAction>)))
  "Returns md5sum for a message object of type '<ASRFileAction>"
  "755ced780decb7cb4a33fd3b127d2d2e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ASRFileAction)))
  "Returns md5sum for a message object of type 'ASRFileAction"
  "755ced780decb7cb4a33fd3b127d2d2e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ASRFileAction>)))
  "Returns full string definition for message of type '<ASRFileAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%ASRFileActionGoal action_goal~%ASRFileActionResult action_result~%ASRFileActionFeedback action_feedback~%~%================================================================================~%MSG: pal_interaction_msgs/ASRFileActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%ASRFileGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: pal_interaction_msgs/ASRFileGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%##goal definition~%# absolute path to the file to be recognised.~%# format has to be PCM 16 bits signed integer~%string file~%# language id. (i.e., en_US, es_ES, ...)~%string lang_id~%# grammar name~%string grammar~%~%================================================================================~%MSG: pal_interaction_msgs/ASRFileActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%ASRFileResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: pal_interaction_msgs/ASRFileResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%##result definition~%# same path as specified in goal variable file~%string file~%# error/warning messages ~%string msg~%# vector of results~%asrresult[] recognised_utterances~%~%================================================================================~%MSG: pal_interaction_msgs/asrresult~%## Message that containes the recognized utterance.~%## Confidence values~%int8 CONFIDENCE_UNDEFINED = -1~%int8 CONFIDENCE_POOR = 1~%int8 CONFIDENCE_LOW  = 2~%int8 CONFIDENCE_GOOD = 3~%int8 CONFIDENCE_MAX  = 4~%~%# ASR result messages used by RosRecognizerServer~%~%# text recognized~%string text~%~%# confidence with values from POOR to MAX~%int8 confidence~%~%# start and end of the recognizer uterance.~%time start~%time end~%~%# list of recognized tags~%# key value pairs of strings extracted from the text~%# given the action tags placed in the grammar.~%actiontag[] tags~%~%================================================================================~%MSG: pal_interaction_msgs/actiontag~%# Action tag contaings the key/value information genertated by parsing the recognised text with a JSGF grammar ~%~%string key~%string value~%================================================================================~%MSG: pal_interaction_msgs/ASRFileActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%ASRFileFeedback feedback~%~%================================================================================~%MSG: pal_interaction_msgs/ASRFileFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback definition~%# At the inmediate time an utterance is recognised~%# it is published here.~%asrresult recognised_utterance~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ASRFileAction)))
  "Returns full string definition for message of type 'ASRFileAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%ASRFileActionGoal action_goal~%ASRFileActionResult action_result~%ASRFileActionFeedback action_feedback~%~%================================================================================~%MSG: pal_interaction_msgs/ASRFileActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%ASRFileGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: pal_interaction_msgs/ASRFileGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%##goal definition~%# absolute path to the file to be recognised.~%# format has to be PCM 16 bits signed integer~%string file~%# language id. (i.e., en_US, es_ES, ...)~%string lang_id~%# grammar name~%string grammar~%~%================================================================================~%MSG: pal_interaction_msgs/ASRFileActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%ASRFileResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: pal_interaction_msgs/ASRFileResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%##result definition~%# same path as specified in goal variable file~%string file~%# error/warning messages ~%string msg~%# vector of results~%asrresult[] recognised_utterances~%~%================================================================================~%MSG: pal_interaction_msgs/asrresult~%## Message that containes the recognized utterance.~%## Confidence values~%int8 CONFIDENCE_UNDEFINED = -1~%int8 CONFIDENCE_POOR = 1~%int8 CONFIDENCE_LOW  = 2~%int8 CONFIDENCE_GOOD = 3~%int8 CONFIDENCE_MAX  = 4~%~%# ASR result messages used by RosRecognizerServer~%~%# text recognized~%string text~%~%# confidence with values from POOR to MAX~%int8 confidence~%~%# start and end of the recognizer uterance.~%time start~%time end~%~%# list of recognized tags~%# key value pairs of strings extracted from the text~%# given the action tags placed in the grammar.~%actiontag[] tags~%~%================================================================================~%MSG: pal_interaction_msgs/actiontag~%# Action tag contaings the key/value information genertated by parsing the recognised text with a JSGF grammar ~%~%string key~%string value~%================================================================================~%MSG: pal_interaction_msgs/ASRFileActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%ASRFileFeedback feedback~%~%================================================================================~%MSG: pal_interaction_msgs/ASRFileFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback definition~%# At the inmediate time an utterance is recognised~%# it is published here.~%asrresult recognised_utterance~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ASRFileAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ASRFileAction>))
  "Converts a ROS message object to a list"
  (cl:list 'ASRFileAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))
