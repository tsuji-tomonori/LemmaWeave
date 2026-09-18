# 残りの有給時間

病気休暇と休暇を半分ずつ使った後の時間数を求める。

**取得済み固定GSM8Kの1問。**

- 各種10日の半分を使用する。

## leave_days：残りの日数

条件：病気休暇10日と休暇10日をそれぞれ半分使う。

根拠：

得られること：各5日、合計10日が残る。

既習の根拠：半分と残余の計算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917C.leave_days`。

## leave_hours：時間への換算

条件：残り10日で、1日は8時間。

根拠：

得られること：残りは10×8=80時間。

既習の根拠：日数から時間への単位換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917C.leave_hours`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917C.leave_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
