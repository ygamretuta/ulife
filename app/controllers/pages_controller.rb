require 'phnorthadmin'

class PagesController < ApplicationController
  def landing
    api = Phnorthadmin.new
    @members = JSON.parse api.members.body
    ap @members
  end
end
