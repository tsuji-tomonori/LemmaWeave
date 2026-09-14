# 3年後のMilfordの年齢

Eustaceの3年後の年齢から現在年齢を戻し、2対1の年齢関係でMilfordの3年後を求める。

**取得済み固定GSM8Kの1問。**

- twice as oldを現在の年齢についてEustace=2×Milfordと解釈する。

## ages_eustace：Eustaceの現在年齢

条件：3年後に39歳。

根拠：

得られること：現在36歳。

既習の根拠：現在年齢=将来年齢−経過年数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915B.ages_eustace`。

## ages_milford：Milfordの現在年齢

条件：Eustace36歳はMilfordの2倍。

根拠：

得られること：Milfordは現在18歳。

既習の根拠：基準量を倍率で割る。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915B.ages_milford`。

## ages_future：Milfordの3年後

条件：現在18歳から3年経過する。

根拠：

得られること：Milfordは21歳になる。

既習の根拠：現在年齢に経過年数を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915B.ages_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915B.ages_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
