# 順番に分けたケーキの残りを求める

16切れから4分の1、残りの3分の1、本人の3切れを順に除いた残りを求める。

**取得済み固定GSM8Kの1問。**

- 家族への3分の1は、友人へ渡した後の12切れに適用する。

## cake_total：全切れ数を求める

条件：ケーキ2個を各8切れに切る。

根拠：

得られること：全部で16切れ。

既習の根拠：2×8を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.cake_total`。

## cake_friend_share：友人へ渡した後を求める

条件：16切れの4分の1を友人へ渡す。

根拠：

得られること：4切れを渡し、12切れ残る。

既習の根拠：16÷4と16−4を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.cake_friend_share`。

## cake_family_share：家族へ渡す数を求める

条件：残った12切れの3分の1を家族へ渡す。

根拠：

得られること：家族へ4切れ渡す。

既習の根拠：12÷3を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.cake_family_share`。

## cake_left：最後の残りを求める

条件：12切れから家族分4切れとAlexが食べた3切れを除く。

根拠：

得られること：5切れ残る。

既習の根拠：12−4−3を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.cake_left`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0913C.cake_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
