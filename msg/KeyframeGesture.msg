# a gesture parametrized by keyframes

### the header - needed for the time stamp
Header header

### priority in the queue (only useful for the player)
int8 priority
int8 PRIORITY_QUEUE_END = 0
# Add gesture at the beginning of the queue
int8 PRIORITY_QUEUE_BEGINNING = 1
# Empty the queue and add gesture
int8 PRIORITY_QUEUE_FLUSH = 2
# Stop the current gesture and add gesture at the beginning of the queue
int8 PRIORITY_PREEMPTIVE_QUEUE_BEGINNING = 3
# Stop the current gesture, empty the queue and add gesture
int8 PRIORITY_PREEMPTIVE_QUEUE_FLUSH = 4

### the key times in seconds (should start at 0)
float64[] keytimes

### the name of the joints set at keyframes
string[] joint_names

### the values of the joints set at keyframes
### they are strings.
### however, for instance they will be cast to floats for dynamixel joints
string[] joint_values
