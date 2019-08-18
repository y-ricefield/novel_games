module Game_Data
  HORIZONTAL = 24 # 横幅
  VERTICAL = 20 # 縦幅

  # 1ならメッセージフィールドにする。
  MESSAGE_FIELD = 1
  # メッセージフィールドの始終
  MESSAGE_START = 16
  MESSAGE_END = 20
end

module Display_Data
  # メッセージフィールド関連
  MESSAGE_FIELD_BLOCK = Image.new(30, 30, [35,35,35])
  MESSAGE_FIELD_BLOCK_SIZE = MESSAGE_FIELD_BLOCK.width
  WINDOW_HEIGHT = MESSAGE_FIELD_BLOCK_SIZE * Game_Data::VERTICAL
  WINDOW_WIDTH = MESSAGE_FIELD_BLOCK_SIZE * Game_Data::HORIZONTAL

  # 選択
  CHOICE = Image.new(50, 50, C_WHITE)
  CHOICE_SPLIT = Sprite.new(0, 0, CHOICE)
  YES_BUTTON = Image.load('./image/yes.png')
  YES_BUTTON_SPLIT = Sprite.new(170, 210, YES_BUTTON)
  NO_BUTTON = Image.load('./image/no.png')
  NO_BUTTON_SPLIT = Sprite.new(390, 210, NO_BUTTON)

  # 背景画像
  YES_FREE_IMG = Image.load('./image/free_magma_image.png')
  NO_FREE_DEEP_SEA = Image.load('./image/free_deep_sea_image.png')
  BACKGROUND = Image.load('./image/background.png')

  # クリック
  MOUSE = Image.new(1, 1, C_WHITE)
  MOUSE_SPLIT = Sprite.new(0, 0, MOUSE)
  NEXT_IMG = Image.load('./image/next.png')
  NEXT_IMG_SPLIT = Sprite.new(600, 500, NEXT_IMG)
  IMG_NEXT_REVR = Image.load('./image/next_reversal.png')
end

module Font_Size
  TITLE_FONT, END_FONR = Font.new(50)
  MAIN_FONT = Font.new(35)
end