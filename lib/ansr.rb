require 'active_support'
require 'active_record'
module Ansr
  extend ActiveSupport::Autoload
  eager_autoload do
    autoload :Configurable
    autoload :ConnectionAdapters
    autoload :Arel
    autoload :Facets
    autoload :Base
    autoload :Model
    autoload :Sanitization
    autoload :Relation
    autoload :OpenStructWithHashAccess, 'ansr/utils'
    autoload_under 'relation' do
      autoload :Group
      autoload :ArelMethods
      autoload :QueryMethods
    end
  end
end