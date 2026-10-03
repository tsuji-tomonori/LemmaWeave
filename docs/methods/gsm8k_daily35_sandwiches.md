# 学年中に食べたサンドイッチ数を求める

36週間の水曜・金曜から欠席した水曜1回と金曜2回を除く。

**取得済み固定GSM8Kの1問。**

- 毎週水曜と金曜の2回を36週分数え、該当曜日の欠席だけを除く。

## sandwiches_scheduled：予定された昼食回数を求める

条件：36週間、毎週水曜と金曜の2回。

根拠：

得られること：予定は72回。

既習の根拠：36×2を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914A.sandwiches_scheduled`。

## sandwiches_missed：欠席回数を合計する

条件：水曜1回と金曜2回を欠席した。

根拠：

得られること：該当曜日の欠席は3回。

既習の根拠：1+2を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914A.sandwiches_missed`。

## sandwiches_eaten：実際に食べた回数を求める

条件：予定72回から欠席3回を除く。

根拠：

得られること：69個食べた。

既習の根拠：72−3を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914A.sandwiches_eaten`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914A.sandwiches_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
