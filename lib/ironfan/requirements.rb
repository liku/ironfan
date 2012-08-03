# Gorillib core classes
require 'gorillib/builder'
require 'gorillib/resolution'


# Pre-declaration of class hierarchy
require 'ironfan/headers'


# DSL for cluster descriptions
require 'ironfan/dsl'
require 'ironfan/builder'

require 'ironfan/dsl/compute'
require 'ironfan/dsl/server'
require 'ironfan/dsl/facet'
require 'ironfan/dsl/cluster'

require 'ironfan/dsl/role'
require 'ironfan/dsl/volume'

require 'ironfan/dsl/cloud'
require 'ironfan/dsl/ec2'


# Providers for specific resources
require 'ironfan/provider'

require 'ironfan/provider/chef'
require 'ironfan/provider/chef/client'
require 'ironfan/provider/chef/node'
require 'ironfan/provider/chef/role'

require 'ironfan/provider/ec2'
require 'ironfan/provider/ec2/ebs_volume'
require 'ironfan/provider/ec2/instance'
require 'ironfan/provider/ec2/key_pair'
require 'ironfan/provider/ec2/placement_group'
require 'ironfan/provider/ec2/security_group'

require 'ironfan/provider/virtualbox'
require 'ironfan/provider/virtualbox/instance'


# Broker classes to coordinate DSL expectations and provider resources
require 'ironfan/broker'
require 'ironfan/broker/machine'
require 'ironfan/broker/store'


# Calls that are slated to go away
require 'ironfan/deprecated'