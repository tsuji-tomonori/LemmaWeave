# 3人の平均年齢

Kimikoを基準にOmiとArletteの年齢を求め、3人の平均を計算する。

**取得済み固定GSM8Kの1問。**

- 3/4 timesをKimikoの年齢の3/4と解釈する。

## ages_individual：2人の年齢

条件：Kimikoは28歳、Omiは2倍、Arletteは3/4倍。

根拠：

得られること：Omiは56歳、Arletteは21歳。

既習の根拠：基準年齢に倍率を掛ける。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915A.ages_individual`。

## ages_total：年齢の合計

条件：28、56、21歳を足す。

根拠：

得られること：合計105歳。

既習の根拠：3人の年齢を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915A.ages_total`。

## ages_average：平均年齢

条件：合計105歳を3人で等分する。

根拠：

得られること：平均35歳。

既習の根拠：平均=合計÷個数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915A.ages_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915A.ages_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
