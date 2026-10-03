# 日ごとの不足を翌日の最低目標へ加える

毎日の最低30回に対し月曜12回、火曜19回だった不足を、水曜の30回に上乗せする回数を求める。

**取得済み固定GSM8Kの1問。**

- minimum goalを日ごとの30回と読み、月火の不足を水曜の最低30回へ全て加える。

## situps_monday：月曜の不足

条件：最低30回に対し12回。

根拠：

得られること：18回不足。

既習の根拠：中学校までの減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.situps_monday`。

## situps_tuesday：火曜の不足

条件：最低30回に対し19回。

根拠：

得られること：11回不足。

既習の根拠：中学校までの減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.situps_tuesday`。

## situps_wednesday：水曜の必要回数

条件：水曜の最低30回に過去の不足18回と11回を加える。

根拠：

得られること：30+18+11=59回。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.situps_wednesday`。

## situps_exists：条件の充足

条件：月曜不足18、火曜不足11、水曜59回と置く。

根拠：

得られること：最低目標と埋合せの条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.situps_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908A.situps_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
