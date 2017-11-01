require 'json'

module SendGrid
  attr_accessor :type, :value

  class Content
    def initialize(type: nil, value: nil)
      @type = type
      @value = value
    end

    def to_json(*)
      {
        'type' => self.type,
        'value' => self.value
      }.delete_if { |_, value| value.to_s.strip == '' }
    end
  end
end
