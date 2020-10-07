require_dependency 'contacts_controller'
require_dependency 'contact'

module RedminePbx
  module ContactsControllerPatch
    def self.included(base)
      base.send(:include, InstanceMethods)

      base.class_eval do
        def search
    
          @contact = Contact.first
          respond_to do |format|
            format.html
            format.api
            format.json
          end
        end
      end
    end

    module InstanceMethods
    end
  end
end
ContactsController.send :include, RedminePbx::ContactsControllerPatch
