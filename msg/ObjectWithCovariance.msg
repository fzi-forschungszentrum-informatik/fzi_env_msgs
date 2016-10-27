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
# The ObjectWithCovariance msg
#
# It is a probabilistic extension of Object.msg. It is capable to hold covariance estimates
# describing uncertainties on almost every element and is therefore prone to large memory
# consumption. Consider this when implementing your application.
#
####



####################################
##### Tracking Information #########
####################################

ObjectTrack tracking_information


#####################################
##### Classification ################
#####################################

ObjectClassificationDistribution classes


#####################################
##### Object Dynamics ###############
#####################################

fzi_geometry_msgs/MetaPoseWithCovariance meta_pose


#####################################
##### Object Geometry ###############
#####################################

ObjectGeometry geometry


#####################################
##### Temporal past and future ######
#####################################


# The probable Trajectories.
#
# They can be used as object histories (track) and/or as object's future (prediction/plan).
# It is defined as a vector representing probable trajectories.
#
fzi_geometry_msgs/TrajectoryWithCovariance[] trajectories

# The probable Behaviors.
#
# They can be used as defined planned behaviors (e.g. for simulation models) and/or as estimated
# behaviors (scene understanding / situation prediction).
# It is defined as a vector representing probable behaviors
#
Behavior[] behaviors

# The probable Routes (trajectories on discrete space representations like rooms or lanes).
#
# They can be used as object histories (track) and/or as object's future (prediction/plan).
# It is defined as a map representing probable routes.
#
RouteWithVariance[] routes

