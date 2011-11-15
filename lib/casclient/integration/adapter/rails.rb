module CASClient
  module Integration
    module Adapter
      module Rails
        class << self

          def redirect(controller, url)
            controller.redirect_to url
          end

          def reset_session(controller)
            controller.reset_session
          end

          def service_url(controller)
            params = controller.params.dup
            params.delete(:ticket)
            controller.url_for(params)
          end

        end
      end
    end
  end
end


