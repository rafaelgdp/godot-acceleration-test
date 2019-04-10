# Simple project to understand how Godot acceleration works in KinematicBodies

@author Rafael G. de Pontes

Notes:

- Distance is measured in pixels
- Time is in seconds

There are 3 bodies, with initial velocity = 1 pixel/second towards the 
right (+x axis):

1) Constant velocity of 1 pixel/second
2) Increased by 1.0 pixel/physics_frame (every _physics_process call)
3) Increased by 1.0 * delta pixel/physics_frame (every _physics_process 
call)

Conclusion: if you want to properly accelerate a KinematicBody2D, you 
have to multiply acceleration by delta every _physics_process call 
before adding to the KB2D velocity.
