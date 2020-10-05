class IncomeTax < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '退職後も所得がある' },
    { id: 3, name: '退職後は所得がない' }
  ]
end