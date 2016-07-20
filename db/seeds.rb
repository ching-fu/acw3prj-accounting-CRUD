# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.create!(:name=>"food")
Category.create!(:name=>"transport")
Category.create!(:name=>"appearance")
Category.create!(:name=>"love")
Category.create!(:name=>"misc")
Category.create!(:name=>"house")
Category.create!(:name=>"insurance")
Category.create!(:name=>"health")
Category.create!(:name=>"enterprise")
Category.create!(:name=>"travel")
Category.create!(:name=>"tax")

Howpay.create!(:way=>'CASH')
Howpay.create!(:way=>'ATM',:bank=>'郵局')
Howpay.create!(:way=>'ATM',:bank=>'彰化銀行')
Howpay.create!(:way=>'ATM',:bank=>'中國信託')
Howpay.create!(:way=>'CARD',:bank=>'花旗')
Howpay.create!(:way=>'CARD',:bank=>'聯邦')
Howpay.create!(:way=>'CARD',:bank=>'富邦')
Howpay.create!(:way=>'CARD',:bank=>'五信')

Currency.create!(:name=>'TWD',:ratio=>'1')
Currency.create!(:name=>'HKD',:ratio=>'4.1271')
Currency.create!(:name=>'USD',:ratio=>'32.0051')
Currency.create!(:name=>'JPY',:ratio=>'0.3018')