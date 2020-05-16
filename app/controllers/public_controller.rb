class PublicController < ApplicationController
  def main
    if account_signed_in?
      redirect_to dashboard_path, flash: { success: "Succesfully signed in. Welcome to Property Matcher!"} and return
    end

    @properties = Property.latest
  end
end
