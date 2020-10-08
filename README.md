1.アプリケーション名  
  転職サポート

2.アプリケーション概要  
  ・転職時に必要になる、手続きを把握し、タスク化できる。  
  ・転職までに必要な費用の計算が可能。

3.URL  
  デプロイ次第記載。

4.テスト用アカウント  
  ユーザー管理機能を実装次第記載。

5.Basic認証のID/Pass  
  導入次第記載

6.利用方法  
  関連機能の実装が終了次第記載。

7.目指した課題解決  
  解決を目指した課題は、転職したい人の転職に対する不安を少しでも解消することです。転職する際には多くのことを行う必要がありますが、その中でも手続きのタスク化・費用面で貢献できると考えています。転職できるまでの費用検討や、個々の状況に応じた行うべき手続きをタスク化することで、その不安を解消したいと考えています。

8.洗い出した要件  
| 優先順位 | 機能         | 目的                                                   | 詳細                                                                       | ストーリー(ユースケース)                                                              | 見積り(所用時間)  |
|----------|--------------|--------------------------------------------------------|----------------------------------------------------------------------------|-----------------------------------------------------------------|-------------------|
| 1        | タスク選択   | ユーザーが、実施すべきタスク・費用を把握する           | 用意したタスクに対して値を入力・選択する。                                 | ・入力必須箇所は必ず入力する                                                               | 20h               |
| 2        | 期間算出     | 期間を定めることで、より現実的な支出を算出する         | 期間を入力する（理想：カレンダーに開始予定日・終了予定日を選択）。         | ・必ず何日間かを入力しなければならない。                                                             | 10h               |
| 3        | 費用算出     | 費用が目に見えていることで、今後の計画が立てやすくなる | 必要なタスク毎に、必要な金額を算出して、期間に応じて必要な費用を算出する。 | ・自動で計算を行うため、ユーザー自身で計算する必要がない。                                                             | 10h               |
| 4        | ユーザー管理 | ユーザーが自分のマイページに遷移できるようにする       | ログイン画面・新規登録画面で必要事項を入力する。                           | ・新規登録ボタンをクリックすると、新規登録できる。既に登録されている場合は、ログインボタンクリックでログイン可能。     | 10h               |

9.実装した機能についてのGIFと説明  
  実装次第随時記載。

10.実装予定の機能  
   ・税金関係の決まりをまとめたもの。  
   ・転職検討中の方にオススメする、YouTube動画集。

11.データベース設計  
   ER図は、ファイル名：.drawio 参照。

# taxesテーブル（税金）

| Column                           | Type    | Options     |
|----------------------------------|---------|-------------|
| health_insurance_premium_id      | string  | null: false | # 健康保険料の手続き
| health_insurance_premium_price   | integer | null: false | # 健康保険料支払額
| pension_id                       | string  | null: false | # 健康保険料支払額
| pension_price                    | integer | null: false | # 年金支払額
| resident_tax_id                  | string  | null: false | # 住民税の手続き
| resident_tax_price               | integer | null: false | # 住民税支払額
| income_tax_id                    | string  | null: false | # 所得税の手続き
| income_tax_price                 | integer | null: false | # 所得税支払額
| other_taxes                      | integer | null: false | # その他

### Association
has_one :total_costs
belongs_to :users

extend ActiveHash::Associations::ActiveRecordExtensions
belongs_to_active_hash :health_insurance_premium
belongs_to_active_hash :pension
belongs_to_active_hash :resident_tax
belongs_to_active_hash :income_tax


# living_costsテーブル（生活費）

| Column                           | Type    | Options     |
|----------------------------------|---------|-------------|
| food_cost                        | integer | null: false | # 食費
| expendables_cost                 | integer | null: false | # 消耗品費
| medical_cost                     | integer | null: false | # 医療費
| other_life_costs                 | integer | null: false | # その他

### Association
has_one :total_costs
belongs_to :users


# movesテーブル（引越し）

| Column                           | Type    | Options     |
|----------------------------------|---------|-------------|
| whether_to_move_id               | string  | null: false | # 引越しの有無
| moving_cost                      | integer | null: false | # 引越し費用
| rent                             | integer | null: false | # 家賃
| security_deposit                 | integer | null: false | # 敷金
| key_money                        | integer | null: false | # 礼金
| administrative_fee               | integer | null: false | # 事務手数料
| other_moves                      | integer | null: false | # その他

### Association
has_one :total_costs
belongs_to :users

extend ActiveHash::Associations::ActiveRecordExtensions
belongs_to_active_hash :whether_to_move



# utility_costsテーブル（光熱費）

| Column                           | Type    | Options     |
|----------------------------------|---------|-------------|
| payment_of_utility_bill_id       | string  | null: false | # 光熱費の支払の有無
| electricity_charges              | integer | null: false | # 電気代
| gas_charges                      | integer | null: false | # ガス代
| water_charges                    | integer | null: false | # 水道代
| other_utility_costs              | integer | null: false | # その他

### Association
has_one :total_costs
belongs_to :users

extend ActiveHash::Associations::ActiveRecordExtensions
belongs_to_active_hash :payment_of_utility_bill


# car_costsテーブル（車）

| Column                           | Type    | Options     |
|----------------------------------|---------|-------------|
| car_ownership_id                 | string  | null: false | # 車の所有の有無
| loan_monthly_payment             | integer | null: false | # ローン月払い
| parking_cost                     | integer | null: false | # 駐車場料金
| water_cost                       | integer | null: false | # 燃料代
| fuel_cost                        | integer | null: false | # 保険代
| vehicle_inspection_fee           | integer | null: false | # 車検代
| car_tax                          | integer | null: false | # 車税
| other_cars                       | integer | null: false | # その他

### Association
has_one :total_costs
belongs_to :users

extend ActiveHash::Associations::ActiveRecordExtensions
belongs_to_active_hash :car_ownership


# monthly_paymentsテーブル（月額支払い）

| Column                           | Type    | Options     |
|----------------------------------|---------|-------------|
| traffic_cost                     | integer | null: false | # 交通費
| phone_cost                       | integer | null: false | # 携帯料金
| other_communication_costs        | integer | null: false | # その他通信費
| scholarship                      | integer | null: false | # 奨学金
| other_monthly_payment            | integer | null: false | # その他

### Association
has_one :total_costs
belongs_to :users


# tuitionsテーブル（学費）

| Column                           | Type    | Options     |
|----------------------------------|---------|-------------|
| necessity_of_attending_school_id | string  | null: false | # （学費）通学の必要性
| admission_cost                   | integer | null: false | # （学費）入学費
| monthly_tuition                  | integer | null: false | # （学費）月学費
| other_tuitions                   | integer | null: false | # （学費）その他

### Association
has_one :total_costs
belongs_to :users

extend ActiveHash::Associations::ActiveRecordExtensions
belongs_to_active_hash :necessity_of_attending_school


# periodsテーブル ## 転職までの期間に関するテーブル

| Column     | Type       | Options                        |
|------------|------------|--------------------------------|
| start_date | date       | null: false                    | # 開始日
| end_date   | date       | null: false                    | # 終了日
| total_days | integer    | null: false                    | # 日数

### Association
belongs_to :total_costs
belongs_to :users


# total_costsテーブル ## 転職までに要する費用に関するテーブル

| Column     | Type       | Options                        |
|------------|------------|--------------------------------|
| total_cost | string     | null: false                    | # 転職までの総費用

### Association
belongs_to :taxes
belongs_to :living_costs
belongs_to :moves
belongs_to :utility_costs
belongs_to :car_costs
belongs_to :monthly_payments
belongs_to :tuitions
has_one :periods
belongs_to :users


# usersテーブル ## ユーザー情報について管理するテーブル

| Column                      | Type   | Options     |
|-----------------------------|--------|-------------|
| nickname                    | string | null: false | # ニックネーム
| email                       | string | null: false | # メールアドレス
| encrypted_password          | string | null: false | # パスワード
| full_width_family_name      | string | null: false | # 姓
| full_width_name             | string | null: false | # 名
| full_width_kana_family_name | string | null: false | # 姓（カタカナ）
| full_width_kana_name        | string | null: false | # 名（カタカナ）
| birthday                    | date   | null: false | # 生年月日

### Association
belongs_to :taxes
belongs_to :living_costs
belongs_to :moves
belongs_to :utility_costs
belongs_to :car_costs
belongs_to :monthly_payments
belongs_to :tuitions
has_one :periods
has_one :total_costs

12.ローカルでの動作方法  
   git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述しましょう。この時、アプリケーション開発に使用した環境を併記することを忘れないでください（パッケージやRubyのバージョンなど）。
