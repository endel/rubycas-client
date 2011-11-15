module CASClient
  module Integration
    module Adapter
      module Sinatra
        class << self

          def redirect(app, url)
            app.redirect url
          end

          def reset_session(app)
            app.session[:casfilteruser] = nil
            app.session[:cas_last_valid_ticket] = nil
            app.session[:cas_last_valid_ticket_service] = nil
          end

          def service_url(app)
            app.request.url
          end

        end
      end
    end
  end
end

