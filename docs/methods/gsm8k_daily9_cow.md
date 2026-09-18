# 体重増加を同一単価で価値の増加へ換算する

400ポンドの牛が元の1.5倍に増量し、1ポンド3ドルで売れるとき、増量後に価値がいくら増えたか求める。

**取得済み固定GSM8Kの1問。**

- 増量前後を同じ1ポンド3ドルで評価する。1.5倍は正確な3/2倍とする。

## cow_new_weight：増量後の体重

条件：元の400ポンドの1.5倍、すなわち3/2倍。

根拠：

得られること：400×3÷2=600ポンド。

既習の根拠：中学校までの割合計算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.cow_new_weight`。

## cow_gain：増えた体重

条件：増量後600ポンド、増量前400ポンド。

根拠：

得られること：200ポンド増えた。

既習の根拠：中学校までの減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.cow_gain`。

## cow_value_increase：価値の増加

条件：増加200ポンドを1ポンド3ドルで評価する。

根拠：

得られること：200×3=600ドル増える。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.cow_value_increase`。

## cow_exists：条件の充足

条件：新体重600、増加200、増価600と置く。

根拠：

得られること：倍率、差、単価の全条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.cow_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908D.cow_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
