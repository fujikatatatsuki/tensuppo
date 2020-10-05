class Pension < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '厚生年金から国民年金に切替える' },
    { id: 3, name: '元々国民年金なので手続き不要' }
  ]
end