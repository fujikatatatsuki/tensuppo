1.アプリケーション名  
  転職サポート

2.アプリケーション概要  
  ・転職時に必要になる、手続きを個々の状況に応じてタスク化できる。  
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
| 1        | タスク選択   | ユーザーが、実施すべきタスク・費用を把握する           | 用意したタスクに対して値を入力・選択する。                               | ・入力必須箇所は必ず入力する                                                               | 20h               |
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

# costsテーブル ## 費用に関するテーブル

| Column                           | Type    | Options     |
|----------------------------------|---------|-------------|
| health_insurance_premium_id      | string  | null: false | # （税金）健康保険料
| pension_id                       | string  | null: false | # （税金）年金
| resident_tax_id                  | string  | null: false | # （税金）住民税
| income_tax_id                    | string  | null: false | # （税金）所得税
| other_taxes                      | integer |             | # （税金）その他
| food_cost                        | integer |             | # （生活費） 食費
| expendables_cost                 | integer |             | # （生活費）消耗品費
| medical_cost                     | integer |             | # （生活費）医療費
| other_life_costs                 | integer |             | # （生活費）その他
| whether_to_move_id               | string  | null: false | # （引越し）引越しの有無
| moving_cost                      | integer |             | # （引越し）引越し費用
| rent                             | integer | null: false | # （引越し）家賃
| security_deposit                 | integer |             | # （引越し）敷金
| key_money                        | integer |             | # （引越し）礼金
| administrative_fee               | integer |             | # （引越し）事務手数料
| other_moves                      | integer |             | # （引越し）その他
| payment_of_utility_bills_id      | string  | null: false | # （光熱費）光熱費の支払の有無
| electricity_charges              | integer |             | # （光熱費）電気代
| gas_charges                      | integer |             | # （光熱費）ガス代
| water_charges                    | integer |             | # （光熱費）水道代
| other_utility _costs             | integer |             | # （光熱費）その他
| car_ownership_id                 | string  | null: false | # （車）車の所有の有無
| loan_monthly_payment             | integer |             | # （車）ローン月払い
| parking_cost                     | integer |             | # （車）駐車場料金
| water_cost                       | integer |             | # （車）燃料代
| fuel_cost                        | integer |             | # （車）保険代
| vehicle_inspection_fee           | integer |             | # （車）車検代
| car_tax                          | integer |             | # （車）車税
| other_cars                       | integer |             | # （車）その他
| traffic＿cost                    | integer |             | # （月額支払）交通費
| phone＿cost                      | integer |             | # （月額支払）携帯料金
| other_communication_costs        | integer |             | # （月額支払）その他通信費
| scholarship                      | integer |             | # （月額支払）奨学金
| debt                             | integer |             | # （月額支払）借金
| other_monthly_payment            | integer |             | # （月額支払）その他
| necessity_of_attending_school_id | string  | null: false | # （学費）通学の必要性
| admission_cost                   | integer |             | # （学費）入学費
| monthly_tuition                  | integer |             | # （学費）月学費
| other_tuitions                   | integer |             | # （学費）その他

### Association
has_one :total_costs
belongs_to :users

extend ActiveHash::Associations::ActiveRecordExtensions
belongs_to_active_hash :health_insurance_premium
belongs_to_active_hash :pension
belongs_to_active_hash :resident_tax
belongs_to_active_hash :income_tax
belongs_to_active_hash :whether_to_move
belongs_to_active_hash :payment_of_utility_bills
belongs_to_active_hash :car_ownership
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
belongs_to :costs
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
has_one :costs
has_one :periods
has_one :total_costs

12.ローカルでの動作方法  
   git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述しましょう。この時、アプリケーション開発に使用した環境を併記することを忘れないでください（パッケージやRubyのバージョンなど）。
