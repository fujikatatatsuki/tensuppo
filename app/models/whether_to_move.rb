class WhetherToMove < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '引越しの必要がある' },
    { id: 3, name: '引越しの必要はない' }
  ]
end