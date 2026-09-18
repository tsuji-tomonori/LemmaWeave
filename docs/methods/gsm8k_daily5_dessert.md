# 2種類の冷菓代の差を求める

アイス10箱を各4ドル、フローズンヨーグルト4箱を各1ドルで買った費用の差を求める。

**取得済み固定GSM8Kの1問。**

- それぞれの箱数と単価から費用を求め、アイス代からヨーグルト代を引く。

## dessert_ice：アイス代

条件：10箱、1箱4ドル。

根拠：

得られること：40ドル。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.dessert_ice`。

## dessert_yogurt：ヨーグルト代

条件：4箱、1箱1ドル。

根拠：

得られること：4ドル。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.dessert_yogurt`。

## dessert_difference：費用の差

条件：アイス代40ドルからヨーグルト代4ドルを引く。

根拠：

得られること：36ドル多い。

既習の根拠：中学校までの減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.dessert_difference`。

## dessert_exists：条件の充足

条件：各費用を40ドル、4ドル、差36ドルと置く。

根拠：

得られること：購入数、単価、差の条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.dessert_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907E.dessert_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
