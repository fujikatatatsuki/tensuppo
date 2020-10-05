class CarOwnership < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '車を所有している' },
    { id: 3, name: '車を所有していない' }
  ]
end