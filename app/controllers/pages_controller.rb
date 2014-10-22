require 'phnorthadmin'

class PagesController < ApplicationController
  def landing
    api = Phnorthadmin.new
    members_json = JSON.parse api.members.body
    @members = members_json.to_properties
  rescue
    @members = nil
  end
end