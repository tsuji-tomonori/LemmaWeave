# 濃度比からカフェイン総量を求める

1本目の1オンス当たり量を基準に、3倍濃い2オンス飲料、2本分と同量の錠剤を順に合計する。

**取得済み固定GSM8Kの1問。**

- 原文のcaffeineの単位gramをそのまま有理数で表し、1本目に対する容量比と濃度比を掛ける。

## energy_second：2本目の量

条件：1本目は12オンスで250グラム、2本目は1オンス当たり3倍で2オンス。

根拠：

得られること：2本目は250×3×2÷12=125グラム。

既習の根拠：同じ量当たりの比と容量比を掛ける比例計算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915C.energy_second`。

## energy_total：飲料と錠剤の合計

条件：飲料2本は250+125グラム、錠剤はその合計と同量。

根拠：

得られること：飲料375グラム、錠剤375グラム、総量750グラム。

既習の根拠：各部分を重複なく加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915C.energy_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915C.energy_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
