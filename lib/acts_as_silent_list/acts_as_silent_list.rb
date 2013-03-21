require 'acts_as_silent_list/active_record/acts/silent_list'
ActiveRecord::Base.class_eval { include ActiveRecord::Acts::SilentList }