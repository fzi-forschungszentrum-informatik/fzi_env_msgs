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
# Message holding a three-fold of object geometry information,
# consisting of a precise mesh, a rough object box and an axis-aligned bounding box.
#
####


## 1. OBJECT MESH

# Object surface
#
# Standard Message for an object mesh
#    For further details: http://docs.ros.org/api/shape_msgs/html/msg/Mesh.html
shape_msgs/Mesh surface


## 2. OBJECT BOX

# The estimated size of the object in meters (including uncertainty).
#
# It is oriented in the local object coordinate system given by the
# object's pose. X, Y and Z are the length, width and height of the
# object.
#
fzi_geometry_msgs/PointWithCovariance object_box


## 3. AXIS-ALIGNED BOX

# The Bounding Box, in contrast to the Object Box, is not aligned to the
# object's pose but to the local coordinate system, given in the
# Stamped-Header (paraxial rectangle). It holds all datapoints of the
# object.
#
# It is especially good for fast collision checks.

# The minimum point of the object's bounding box.
#
geometry_msgs/Point bounding_box_min

# The maximum point of the object's bounding box.
#
geometry_msgs/Point bounding_box_max



## 4. ADDITIONAL INFORMATION

# The data point that is most close to the local coordinate system's origin.
#
# It is set to 0 if no closest point is given.
#
geometry_msgs/Point closest_point

# The mass of the object in kg.
#
float32 mass

