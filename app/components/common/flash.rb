class Common::Flash < ApplicationComponent
  def initialize(key:, message:)
    @key = key
    @message = message
  end

  def flash_class
    {
      alert: 'alert-danger',
      notice: 'alert-success'
    }.fetch(key.to_sym, key)
  end

  def flash_icon
    {
      alert: 'fa-exclamation-triangle',
      notice: 'fa-info'
    }.fetch(key_to_sym, key)
  end

  private

  attr_reader :key, :message
end
