;; Auto-generated. Do not edit!


(when (boundp 'RosAdapter::override_controller)
  (if (not (find-package "ROSADAPTER"))
    (make-package "ROSADAPTER"))
  (shadow 'override_controller (find-package "ROSADAPTER")))
(unless (find-package "ROSADAPTER::OVERRIDE_CONTROLLER")
  (make-package "ROSADAPTER::OVERRIDE_CONTROLLER"))

(in-package "ROS")
;;//! \htmlinclude override_controller.msg.html


(defclass RosAdapter::override_controller
  :super ros::object
  :slots (_u8ThrottleValue _u8BrakeValue _u8SteeringWheelValue _u8ParkingBrakeValue _u8ClutchValue _u8GearValue _u4ObjectId _u1ThrottleActive _u1BrakeActive _u1SteeringWheelActive _u1ParkingBrakeActive _u1ClutchActive _u1GearActive ))

(defmethod RosAdapter::override_controller
  (:init
   (&key
    ((:u8ThrottleValue __u8ThrottleValue) 0.0)
    ((:u8BrakeValue __u8BrakeValue) 0.0)
    ((:u8SteeringWheelValue __u8SteeringWheelValue) 0.0)
    ((:u8ParkingBrakeValue __u8ParkingBrakeValue) 0.0)
    ((:u8ClutchValue __u8ClutchValue) 0.0)
    ((:u8GearValue __u8GearValue) 0.0)
    ((:u4ObjectId __u4ObjectId) 0)
    ((:u1ThrottleActive __u1ThrottleActive) nil)
    ((:u1BrakeActive __u1BrakeActive) nil)
    ((:u1SteeringWheelActive __u1SteeringWheelActive) nil)
    ((:u1ParkingBrakeActive __u1ParkingBrakeActive) nil)
    ((:u1ClutchActive __u1ClutchActive) nil)
    ((:u1GearActive __u1GearActive) nil)
    )
   (send-super :init)
   (setq _u8ThrottleValue (float __u8ThrottleValue))
   (setq _u8BrakeValue (float __u8BrakeValue))
   (setq _u8SteeringWheelValue (float __u8SteeringWheelValue))
   (setq _u8ParkingBrakeValue (float __u8ParkingBrakeValue))
   (setq _u8ClutchValue (float __u8ClutchValue))
   (setq _u8GearValue (float __u8GearValue))
   (setq _u4ObjectId (round __u4ObjectId))
   (setq _u1ThrottleActive __u1ThrottleActive)
   (setq _u1BrakeActive __u1BrakeActive)
   (setq _u1SteeringWheelActive __u1SteeringWheelActive)
   (setq _u1ParkingBrakeActive __u1ParkingBrakeActive)
   (setq _u1ClutchActive __u1ClutchActive)
   (setq _u1GearActive __u1GearActive)
   self)
  (:u8ThrottleValue
   (&optional __u8ThrottleValue)
   (if __u8ThrottleValue (setq _u8ThrottleValue __u8ThrottleValue)) _u8ThrottleValue)
  (:u8BrakeValue
   (&optional __u8BrakeValue)
   (if __u8BrakeValue (setq _u8BrakeValue __u8BrakeValue)) _u8BrakeValue)
  (:u8SteeringWheelValue
   (&optional __u8SteeringWheelValue)
   (if __u8SteeringWheelValue (setq _u8SteeringWheelValue __u8SteeringWheelValue)) _u8SteeringWheelValue)
  (:u8ParkingBrakeValue
   (&optional __u8ParkingBrakeValue)
   (if __u8ParkingBrakeValue (setq _u8ParkingBrakeValue __u8ParkingBrakeValue)) _u8ParkingBrakeValue)
  (:u8ClutchValue
   (&optional __u8ClutchValue)
   (if __u8ClutchValue (setq _u8ClutchValue __u8ClutchValue)) _u8ClutchValue)
  (:u8GearValue
   (&optional __u8GearValue)
   (if __u8GearValue (setq _u8GearValue __u8GearValue)) _u8GearValue)
  (:u4ObjectId
   (&optional __u4ObjectId)
   (if __u4ObjectId (setq _u4ObjectId __u4ObjectId)) _u4ObjectId)
  (:u1ThrottleActive
   (&optional (__u1ThrottleActive :null))
   (if (not (eq __u1ThrottleActive :null)) (setq _u1ThrottleActive __u1ThrottleActive)) _u1ThrottleActive)
  (:u1BrakeActive
   (&optional (__u1BrakeActive :null))
   (if (not (eq __u1BrakeActive :null)) (setq _u1BrakeActive __u1BrakeActive)) _u1BrakeActive)
  (:u1SteeringWheelActive
   (&optional (__u1SteeringWheelActive :null))
   (if (not (eq __u1SteeringWheelActive :null)) (setq _u1SteeringWheelActive __u1SteeringWheelActive)) _u1SteeringWheelActive)
  (:u1ParkingBrakeActive
   (&optional (__u1ParkingBrakeActive :null))
   (if (not (eq __u1ParkingBrakeActive :null)) (setq _u1ParkingBrakeActive __u1ParkingBrakeActive)) _u1ParkingBrakeActive)
  (:u1ClutchActive
   (&optional (__u1ClutchActive :null))
   (if (not (eq __u1ClutchActive :null)) (setq _u1ClutchActive __u1ClutchActive)) _u1ClutchActive)
  (:u1GearActive
   (&optional (__u1GearActive :null))
   (if (not (eq __u1GearActive :null)) (setq _u1GearActive __u1GearActive)) _u1GearActive)
  (:serialization-length
   ()
   (+
    ;; float64 _u8ThrottleValue
    8
    ;; float64 _u8BrakeValue
    8
    ;; float64 _u8SteeringWheelValue
    8
    ;; float64 _u8ParkingBrakeValue
    8
    ;; float64 _u8ClutchValue
    8
    ;; float64 _u8GearValue
    8
    ;; uint32 _u4ObjectId
    4
    ;; bool _u1ThrottleActive
    1
    ;; bool _u1BrakeActive
    1
    ;; bool _u1SteeringWheelActive
    1
    ;; bool _u1ParkingBrakeActive
    1
    ;; bool _u1ClutchActive
    1
    ;; bool _u1GearActive
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _u8ThrottleValue
       (sys::poke _u8ThrottleValue (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8BrakeValue
       (sys::poke _u8BrakeValue (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8SteeringWheelValue
       (sys::poke _u8SteeringWheelValue (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8ParkingBrakeValue
       (sys::poke _u8ParkingBrakeValue (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8ClutchValue
       (sys::poke _u8ClutchValue (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u8GearValue
       (sys::poke _u8GearValue (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _u4ObjectId
       (write-long _u4ObjectId s)
     ;; bool _u1ThrottleActive
       (if _u1ThrottleActive (write-byte -1 s) (write-byte 0 s))
     ;; bool _u1BrakeActive
       (if _u1BrakeActive (write-byte -1 s) (write-byte 0 s))
     ;; bool _u1SteeringWheelActive
       (if _u1SteeringWheelActive (write-byte -1 s) (write-byte 0 s))
     ;; bool _u1ParkingBrakeActive
       (if _u1ParkingBrakeActive (write-byte -1 s) (write-byte 0 s))
     ;; bool _u1ClutchActive
       (if _u1ClutchActive (write-byte -1 s) (write-byte 0 s))
     ;; bool _u1GearActive
       (if _u1GearActive (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _u8ThrottleValue
     (setq _u8ThrottleValue (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8BrakeValue
     (setq _u8BrakeValue (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8SteeringWheelValue
     (setq _u8SteeringWheelValue (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8ParkingBrakeValue
     (setq _u8ParkingBrakeValue (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8ClutchValue
     (setq _u8ClutchValue (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u8GearValue
     (setq _u8GearValue (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _u4ObjectId
     (setq _u4ObjectId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _u1ThrottleActive
     (setq _u1ThrottleActive (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _u1BrakeActive
     (setq _u1BrakeActive (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _u1SteeringWheelActive
     (setq _u1SteeringWheelActive (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _u1ParkingBrakeActive
     (setq _u1ParkingBrakeActive (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _u1ClutchActive
     (setq _u1ClutchActive (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _u1GearActive
     (setq _u1GearActive (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get RosAdapter::override_controller :md5sum-) "8ea5a19cb588ee701c9b5157e9aab0b5")
(setf (get RosAdapter::override_controller :datatype-) "RosAdapter/override_controller")
(setf (get RosAdapter::override_controller :definition-)
      "# /** ------接管控制器 ------ */

float64   u8ThrottleValue
float64   u8BrakeValue
float64   u8SteeringWheelValue
float64   u8ParkingBrakeValue
float64   u8ClutchValue
float64   u8GearValue
uint32    u4ObjectId
bool      u1ThrottleActive
bool      u1BrakeActive
bool      u1SteeringWheelActive
bool      u1ParkingBrakeActive
bool      u1ClutchActive
bool      u1GearActive
")



(provide :RosAdapter/override_controller "8ea5a19cb588ee701c9b5157e9aab0b5")


