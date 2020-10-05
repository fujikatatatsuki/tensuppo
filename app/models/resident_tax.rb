class ResidentTax < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '1月〜5月間に退職する' },
    { id: 3, name: '6月〜12月間に退職する' }
  ]
end