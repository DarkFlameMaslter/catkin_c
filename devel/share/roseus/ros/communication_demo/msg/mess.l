;; Auto-generated. Do not edit!


(when (boundp 'communication_demo::mess)
  (if (not (find-package "COMMUNICATION_DEMO"))
    (make-package "COMMUNICATION_DEMO"))
  (shadow 'mess (find-package "COMMUNICATION_DEMO")))
(unless (find-package "COMMUNICATION_DEMO::MESS")
  (make-package "COMMUNICATION_DEMO::MESS"))

(in-package "ROS")
;;//! \htmlinclude mess.msg.html


(defclass communication_demo::mess
  :super ros::object
  :slots (_count ))

(defmethod communication_demo::mess
  (:init
   (&key
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _count (round __count))
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; int64 _count
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _count
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _count (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _count) (= (length (_count . bv)) 2)) ;; bignum
              (write-long (ash (elt (_count . bv) 0) 0) s)
              (write-long (ash (elt (_count . bv) 1) -1) s))
             ((and (class _count) (= (length (_count . bv)) 1)) ;; big1
              (write-long (elt (_count . bv) 0) s)
              (write-long (if (>= _count 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _count s)(write-long (if (>= _count 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _count
#+(or :alpha :irix6 :x86_64)
      (setf _count (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _count (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get communication_demo::mess :md5sum-) "8dbac33d2eb67bfeeedd516d65fec846")
(setf (get communication_demo::mess :datatype-) "communication_demo/mess")
(setf (get communication_demo::mess :definition-)
      "int64 count

")



(provide :communication_demo/mess "8dbac33d2eb67bfeeedd516d65fec846")


