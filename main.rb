#DXruby ノベルゲーム
require 'dxruby'
require_relative './class/game_data.rb'
require_relative './class/field.rb'

Window.height = Display_Data::WINDOW_HEIGHT
Window.width = Display_Data::WINDOW_WIDTH 

message_field = Message_Field.new

scene = 'title'

Window.loop do
  case scene

    when 'title'
      Window.draw_font(230,250,"SPACE Push\n  →START",Font_Size::TITLE_FONT)
      scene = "choice" if Input.key_push?(K_SPACE)

    when 'choice'
      message_field.message_display
      Window.draw_font(30,500,'text1',Font_Size::MAIN_FONT)
      Sprite.draw(Display_Data::YES_BUTTON_SPLIT)
      Sprite.draw(Display_Data::NO_BUTTON_SPLIT)
      Display_Data::CHOICE_SPLIT.x, Display_Data::CHOICE_SPLIT.y = Input.mouse_pos_x, Input.mouse_pos_y
      if Display_Data::CHOICE_SPLIT === Display_Data::YES_BUTTON_SPLIT && Input.mousePush?(M_LBUTTON)
        scene = 'yes'
      elsif Display_Data::CHOICE_SPLIT === Display_Data::NO_BUTTON_SPLIT && Input.mousePush?(M_LBUTTON)
        scene = 'no'
      end

    when 'yes'
      Window.draw(0,0,Display_Data::YES_FREE_IMG)
      message_field.message_display
      Sprite.draw(Display_Data::NEXT_IMG_SPLIT)
      Window.draw_font(30,500,'text_yes',Font_Size::MAIN_FONT)
      Display_Data::MOUSE_SPLIT.x, Display_Data::MOUSE_SPLIT.y = Input.mouse_pos_x, Input.mouse_pos_y
        if Display_Data::MOUSE_SPLIT === Display_Data::NEXT_IMG_SPLIT && Input.mousePush?(M_LBUTTON)
          Window.draw(600,500,Display_Data::IMG_NEXT_REVR)
          scene = "main-1" 
        end

    when 'no'
      Window.draw(0,0,Display_Data::NO_FREE_DEEP_SEA)
      message_field.message_display
      Sprite.draw(Display_Data::NEXT_IMG_SPLIT)
      Window.draw_font(30,500,'text_no',Font_Size::MAIN_FONT)
      Display_Data::MOUSE_SPLIT.x, Display_Data::MOUSE_SPLIT.y = Input.mouse_pos_x, Input.mouse_pos_y
        if Display_Data::MOUSE_SPLIT === Display_Data::NEXT_IMG_SPLIT && Input.mousePush?(M_LBUTTON)
          Window.draw(600,500,Display_Data::IMG_NEXT_REVR)
          scene = "main-1" 
        end

    when 'main-1'
      Window.draw(0,0,Display_Data::BACKGROUND)
      message_field.message_display
      Sprite.draw(Display_Data::NEXT_IMG_SPLIT)
      Window.draw_font(30,500,'main-1',Font_Size::MAIN_FONT)
      Display_Data::MOUSE_SPLIT.x, Display_Data::MOUSE_SPLIT.y = Input.mouse_pos_x, Input.mouse_pos_y
        if Display_Data::MOUSE_SPLIT === Display_Data::NEXT_IMG_SPLIT && Input.mousePush?(M_LBUTTON)
          Window.draw(600,500,Display_Data::IMG_NEXT_REVR)
          scene = "main-2" 
        end

    when 'main-2'
      Window.draw(0,0,Display_Data::BACKGROUND)
      message_field.message_display
      Sprite.draw(Display_Data::NEXT_IMG_SPLIT)
      Window.draw_font(30,500,'main-2',Font_Size::MAIN_FONT)
      Display_Data::MOUSE_SPLIT.x, Display_Data::MOUSE_SPLIT.y = Input.mouse_pos_x, Input.mouse_pos_y
        if Display_Data::MOUSE_SPLIT === Display_Data::NEXT_IMG_SPLIT && Input.mousePush?(M_LBUTTON)
          Window.draw(600,500,Display_Data::IMG_NEXT_REVR)
          scene = "main-3" 
        end

    when 'main-3'
      Window.draw(0,0,Display_Data::BACKGROUND)
      message_field.message_display
      Sprite.draw(Display_Data::NEXT_IMG_SPLIT)
      Window.draw_font(30,500,'main-3',Font_Size::MAIN_FONT)
      Display_Data::MOUSE_SPLIT.x, Display_Data::MOUSE_SPLIT.y = Input.mouse_pos_x, Input.mouse_pos_y
        if Display_Data::MOUSE_SPLIT === Display_Data::NEXT_IMG_SPLIT && Input.mousePush?(M_LBUTTON)
          Window.draw(600,500,Display_Data::IMG_NEXT_REVR)
          scene = "end" 
        end

    when 'end'
      Window.draw_font(250,250,"TAB push\n  →TITLE",Font_Size::TITLE_FONT)
      scene = "title" if Input.key_push?(K_TAB)
  end
end

