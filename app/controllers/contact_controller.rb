class ContactController < ApplicationController
  def view
    @address = StoreAddress.find(1)
    @hash = Gmaps4rails.build_markers(@address) do |address, marker|
      marker.lat address.latitude
      marker.lng address.longitude
    end
  end
end
