module CASClient
  module Integration
    module Adapter
      module Sinatra
        class << self

          def redirect(app, url)
            app.redirect url
          end

          def reset_session(app)
            app.session = {}
          end

          def service_url(app)
            app.request.url
          end

        end
      end
    end
  end
end

