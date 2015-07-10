require 'phnorthadmin'

class PagesController < ApplicationController
  def landing
    api = Phnorthadmin.new
    @members = nil
    request = api.members

    if request
      members_json = JSON.parse request.body
      @members = members_json.to_properties
    end
  end
end