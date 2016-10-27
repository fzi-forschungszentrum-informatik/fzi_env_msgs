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
# Probabilistic extension of RouteSegment.
#
# A segment of a route is usually a specific element in a discrete space segmentation, e.g. rooms in
# a building or lane segments on roads.
#
####

# the identifier of the lane segment (e.g. lanelet ID)
int64 id

# the time when the obstacle enters the route segment
fzi_std_msgs/TimeWithVariance entry_time


