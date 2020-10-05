class HealthInsurancePremium < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'それまで加入していた社会保険の任意継続を行う' },
    { id: 3, name: '国民健康保険に切替える' },
    { id: 4, name: '家族の健康保険の扶養に入る' }
  ]
end