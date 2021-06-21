# frozen_string_literal: true

class ModalComponent < ViewComponent::Base
  with_content_areas :header, :footer
  attr_accessor :dom_id, :open, :header_close_btn

  def initialize(open: true, header_close_btn: true)
    self.dom_id = "modal-#{SecureRandom.hex(12)}"
    self.open = open
    self.header_close_btn = header_close_btn
  end
end
