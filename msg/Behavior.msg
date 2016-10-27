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
# The Behavior msg
#
# It is very generic, holding a string type and two arrays for numeric data.
#
####

# identifier number of this behavior instance
uint64 id

# probability of the behavior
float32 probability

# behavior class (type of the behavior)
uint32 behavior_class

# integer parameters of the behavior (interpretation is depending on the behavior type)
int64[] int_params

# float parameters of the behavior (interpretation is depending on the behavior type)
float64[] float_params


# trajectories corresponding to this behavior (identified by their ID)
uint64[] trajectory_ids
