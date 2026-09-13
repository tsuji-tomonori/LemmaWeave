# 30日分の税引後賃金を求める

日給40ドルから10%の税を引き、30日働いた税引後総額を求める。

**取得済み固定GSM8Kの1問。**

- 各日の税率と日数が一定であると原文どおり解釈する。

## taxes_tax：1日分の税額を求める

条件：日給40ドルの10%を税として引く。

根拠：

得られること：1日分の税は4ドル。

既習の根拠：10%は10分の1として40÷10を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914A.taxes_tax`。

## taxes_net：税引後日給を求める

条件：日給40ドルから税4ドルを引く。

根拠：

得られること：税引後日給は36ドル。

既習の根拠：40−4を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914A.taxes_net`。

## taxes_total：30日分を求める

条件：税引後日給36ドルで30日働く。

根拠：

得られること：税引後総額は1,080ドル。

既習の根拠：36×30を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914A.taxes_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914A.taxes_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
