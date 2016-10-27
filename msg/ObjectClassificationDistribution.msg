# -- BEGIN LICENSE BLOCK ----------------------------------------------
# This program is free software licensed under the CDDL
# (COMMON DEVELOPMENT AND DISTRIBUTION LICENSE Version 1.0).
# You can find a copy of this license in LICENSE in the top
# directory of the source code.
#
# © Copyright 2016 FZI Forschungszentrum Informatik, Karlsruhe, Germany
# -- END LICENSE BLOCK ------------------------------------------------

#----------------------------------------------------------------------
# \file
#
# \author  Florian Kuhnt <kuhnt@fzi.de>
# \date    2016-09-15
#
#----------------------------------------------------------------------

####
# A distribution over possible object classifications
####


# The classes are here only handled as integer identifiers. The actual meaning
# of the classes is defined in the ObstacleList holding this Obstacle entry.
#
# An example for Obstacles classified by an Ibeo sensor is given here:
#
# Enum for the obstacle classification result
#int16    ClassUnclassified = 0        #  = 0: No classification determined (yet)
#int16    ClassUnknownSmall = 1        #  = 1: Relatively small structure like pole, tree, single #bush, etc. which does not fit to other classes.
#int16    ClassUnknownBig = 2          #  = 2: Bigger structure which does not fit other classes.
#int16    ClassPedestrian = 3          #  = 3: Pedestrian, usually determined by moving behaviour.
#int16    ClassBike = 4                #  = 4: bike, motor bike
#int16    ClassCar = 5                 #  = 5: Passenger car.
#int16    ClassTruck = 6               #  = 6: Big vehicle, bus, truck.
#int16    ClassStructure_Pylon = 7
#int16    ClassStructure_Beacon = 8
#int16    ClassStructure_GuardRail = 9
#int16    ClassStructure_ConcreteBarrier = 10
#int16    ClassNumClasses = 11         #  Number of currently defined classes except Unknown.
#int16    ClassUnknown = 15            #  = 15: Compatibility to earlier software which does not #determine between UnknownBig or -Small or Unclassified.


# The object classes with their respective probability
#    usually sorted by probability, starting with the highest probability
fzi_std_msgs/ClassWithProbability[] classes

