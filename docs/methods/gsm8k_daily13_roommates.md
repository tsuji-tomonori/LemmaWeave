# 2倍より5人多い人数

Bobのルームメイトが10人で、Johnはその2倍より5人多い。Johnの人数を求める。

**取得済み固定GSM8Kの1問。**

- 英文をBobの2倍に5を加える関係と読む。

## roommates_doubled：Bobの2倍

条件：Bobは10人。

根拠：

得られること：2倍は20人。

既習の根拠：倍の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.roommates_doubled`。

## roommates_john：Johnの人数

条件：Johnは20人より5人多い。

根拠：

得られること：Johnは25人。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.roommates_john`。

## roommates_exists：条件の充足

条件：Bob10、2倍20、John25と置く。

根拠：

得られること：全条件を満たす。

既習の根拠：数値等式の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.roommates_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909B.roommates_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
