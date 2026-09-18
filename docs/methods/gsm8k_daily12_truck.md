# 途中で人数が増える積込時間を求める

2人が各時速250個で4時間積み、その後6人が加わる。6000個を積む総時間を求める。

**取得済み固定GSM8Kの1問。**

- 参加後は元の2人と追加6人の計8人が同率で作業を続ける。

## truck_first_rate：最初の処理速度

条件：2人が各時速250個。

根拠：

得られること：合計時速500個。

既習の根拠：人数×個人速度。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.truck_first_rate`。

## truck_first_filled：最初の4時間の個数

条件：時速500個で4時間。

根拠：

得られること：2000個。

既習の根拠：速度×時間。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.truck_first_filled`。

## truck_remaining：残り個数

条件：容量6000個から2000個を引く。

根拠：

得られること：4000個。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.truck_remaining`。

## truck_people：参加後の人数

条件：元の2人に6人が加わる。

根拠：

得られること：8人。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.truck_people`。

## truck_second_rate：参加後の処理速度

条件：8人が各時速250個。

根拠：

得られること：時速2000個。

既習の根拠：人数×個人速度。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.truck_second_rate`。

## truck_second_hours：残作業の時間

条件：残り4000個を時速2000個で積む。

根拠：

得られること：2時間。

既習の根拠：量÷速度。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.truck_second_hours`。

## truck_total_hours：総時間

条件：最初4時間と残り2時間。

根拠：

得られること：合計6時間。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.truck_total_hours`。

## truck_exists：条件の充足

条件：500、2000、4000、8、2000、2、6と置く。

根拠：

得られること：全条件を満たす。

既習の根拠：数値等式の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.truck_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909A.truck_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
