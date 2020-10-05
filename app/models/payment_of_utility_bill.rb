class PaymentOfUtilityBill < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '光熱費を支払う必要がある' },
    { id: 3, name: '光熱費を支払う必要はない' }
  ]
end