# 3人が2時間で解く問題数

3人の1時間当たりの問題数を求め、同じ量を解く次の1時間を加える。

**取得済み固定GSM8Kの1問。**

- 翌時間も各人が第1時間と同数を解く。

## questions_hourly：1時間の3人分

条件：Fionaは36問、Shirleyはその2倍、Kianaは2人の合計の半分。

根拠：

得られること：Shirleyは72問、Kianaは54問、3人で162問。

既習の根拠：倍の乗法、半分の除法、合計の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917B.questions_hourly`。

## questions_total：2時間の合計

条件：次の1時間も各人が同数を解く。

根拠：

得られること：162×2=324問。

既習の根拠：同じ1時間分を2回繰り返す乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917B.questions_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917B.questions_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
