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
# The ObjectWithCovarianceArray msg
#
# It is a probabilistic extension of the ObjectArray.msg using ObjectWithCovariance. It is capable
# to hold covariance estimates describing uncertainties on almost every element and is therefore
# prone to large memory consumption. Consider this when implementing your application.
#
####

# msg header, describing timestamp and coordinate system of all the objects in the array
Header header

# A map describing the names of the object classes used in the objects.
fzi_std_msgs/ClassWithName[] object_classes_map

# A map describing the names of the behavior classes used in the objects.
fzi_std_msgs/ClassWithName[] behavior_classes_map


# the array of actual objects
ObjectWithCovariance[] objects
