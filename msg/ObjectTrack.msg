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
# \date    2014-05-30
#
#----------------------------------------------------------------------

####
# The ObjectTrack msg
#
# Holding Tracking information for an object.
#
####


# The identifier number of the object.
#
# In some algorithms the id 0 is used in a special manner e.g. being the ego vehicle itself.
# Invalid objects should be set using is_valid.
#
uint64 id

# Existence probability
#
# Incorporating several existence indicators into one probability value
#
float32 probability

# True iff this object is valid.
#
# This can be used to filter objects.
#
bool is_valid

# The number of time steps in which the object has been tracked.
#
# Minor information, could be removed in future.
#
uint32 age

# The number of time steps in which the object has not been observed by
# measurements (i.e. it was hidden). Then the current state is only a
# predicted state. To see if the object is currently hidden, check this
# for >0.
#
# Minor information, could be removed in future.
#
uint16 hidden_status_age
