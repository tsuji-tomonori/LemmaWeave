# 一日に歩く階段数

3階分を上り5回、下り3回歩くときの総階段区間数を求める。

**取得済み固定GSM8Kの1問。**

- 上りも下りも1回につき3 flightsとして数え、エレベーター移動は含めない。

## stairs_up：上り

条件：3区間の上りを5回。

根拠：

得られること：上りは3×5=15区間。

既習の根拠：1回量と回数の積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.stairs_up`。

## stairs_down：下り

条件：3区間の下りを3回。

根拠：

得られること：下りは3×3=9区間。

既習の根拠：1回量と回数の積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.stairs_down`。

## stairs_total：上り下りの合計

条件：上り15区間、下り9区間。

根拠：

得られること：合計15+9=24区間。

既習の根拠：方向別回数の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.stairs_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909C.stairs_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
