# 二つの除菌スプレー後の残存率

50%と25%を殺す二つのスプレーの重複を差し引いて残る割合を検討する。

**取得済み固定GSM8Kの1問。**

- same onesの5%が元の菌全体に対する5ポイントか、殺した集合内の相対比かが曖昧。両解釈を区別する。

## sanitizer_point_killed：5ポイント重複なら殺す割合

条件：50%集合と25%集合の共通部分が元の全菌の5%。

根拠：

得られること：包除原理により殺す割合は50+25-5=70%。

既習の根拠：二集合の和集合は各大きさの和から共通部分を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.sanitizer_point_killed`。

## sanitizer_point_left：5ポイント解釈の残存率

条件：全体100%のうち70%を殺す。

根拠：

得られること：残るのは100-70=30%。

既習の根拠：全体から除かれた割合を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.sanitizer_point_left`。

## sanitizer_relative_overlap：相対5%解釈の重複

条件：5%を第2スプレーが殺す25%の内数と読む。

根拠：

得られること：重複は25×5/100=1.25%。

既習の根拠：基準量に百分率を掛ける。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.sanitizer_relative_overlap`。

## sanitizer_relative_left：相対5%解釈の残存率

条件：重複1.25%を50%+25%から一度差し引く。

根拠：

得られること：残るのは100-(50+25-1.25)=26.25%。

既習の根拠：包除原理と割合の減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.sanitizer_relative_left`。

## sanitizer_distinct：曖昧性の結論

条件：5ポイント解釈では30%、相対5%解釈では26.25%。

根拠：

得られること：二値は異なるため原文だけでは一意でない。5ポイントという追加条件なら答えは30%。

既習の根拠：異なる整合的解釈による非一意性。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.sanitizer_distinct`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909C.sanitizer_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
