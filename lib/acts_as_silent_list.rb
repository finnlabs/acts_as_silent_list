require 'acts_as_silent_list/active_record/acts/silent_list'

module ActsAsSilentList
  if defined? Rails::Railtie
    require 'rails'
    class Railtie < Rails::Railtie
      initializer 'acts_as_silent_list.insert_into_active_record' do
        ActiveSupport.on_load :active_record do
          ActsAsSilentList::Railtie.insert
        end
      end
    end
  end

  class Railtie
    def self.insert
      if defined?(ActiveRecord)
        ActiveRecord::Base.send(:include, ActiveRecord::Acts::SilentList)
      end
    end
  end
end

ActsAsSilentList::Railtie.insert