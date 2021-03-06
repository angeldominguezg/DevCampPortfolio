class ApplicationController < ActionController::Base
    include DeviseWhitelist
    include SetSource
    include CurrentUserConcern
    include DefaultPageContent

    before_action :set_copyright
    def set_copyright
      @copyright = DevcampViewToolAngelddg::Renderer.copyright '@angelddg', 'All right reserved.'
    end
end
