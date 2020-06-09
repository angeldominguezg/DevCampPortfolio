module CurrentUserConcern
    extend ActiveSupport::Concern
    def current_user
        super || OpenStruct.new(name: "Guest User", first_name: "Guest", las_tname: "User", email: "g_user@mail.com")
    end
  end
