class Message_Field
  def initialize
    @vertical = Game_Data::VERTICAL     # 縦幅
    @horizontal = Game_Data::HORIZONTAL # 横幅
    @field_view = []
    field_setup
  end

  def field_setup
    @field = Array.new(@vertical).map { Array.new(@horizontal, 0) }
    message_field = Array.new(@horizontal,Game_Data::MESSAGE_FIELD)

    (Game_Data::MESSAGE_START..Game_Data::MESSAGE_END).each do |i|
      @field[i] = message_field
    end

    @vertical.times do |y|
      @horizontal.times do |x|
        if @field[y][x] == 1
          @field_view << Sprite.new(Display_Data::MESSAGE_FIELD_BLOCK_SIZE * x,
                                    Display_Data::MESSAGE_FIELD_BLOCK_SIZE * y,
                                   Display_Data::MESSAGE_FIELD_BLOCK)
        end
      end
    end
  end

  def message_display
    Sprite.draw(@field_view)
  end
end


