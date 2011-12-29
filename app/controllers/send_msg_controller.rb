require 'net/http'
require 'pp'
class SendMsgController < ApplicationController
  def new
  end
  def create
    message = params[:message]
    uri= URI('http://im.kayac.com/api/post/becyn')
    res = Net::HTTP.post_form(uri, 'message' => message) 
    render :text => "created!"
  end
end
