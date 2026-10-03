# 残り時間の最低ペース

10分の半分で20個食べた後、75個へ到達するための毎分の個数を求める。

**取得済み固定GSM8Kの1問。**

- 残り時間中は毎分同じ整数個を食べるモデルで最低値も示す。

## hotdogs_remaining：残り時間

条件：全10分の半分が経過している。

根拠：

得られること：残りは10−5=5分。

既習の根拠：半分と残り。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.hotdogs_remaining`。

## hotdogs_needed：不足個数

条件：記録75個に対し20個を食べ終えた。

根拠：

得られること：同記録には75−20=55個必要。

既習の根拠：目標と現状の差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.hotdogs_needed`。

## hotdogs_rate：毎分ペース

条件：55個を残り5分へ均等配分する。

根拠：

得られること：毎分55÷5=11個。

既習の根拠：等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.hotdogs_rate`。

## hotdogs_minimum：最低性

条件：毎分r個で5分に55個以上食べる整数ペースを考える。

根拠：

得られること：必ずr≥11なので、少なくとも同記録に並ぶ答えは毎分11個。

既習の根拠：不等式による最低値の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.hotdogs_minimum`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911A.hotdogs_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
