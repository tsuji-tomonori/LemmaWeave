# 実施した腕立て伏せ総数

3組15回の予定から、第3組で不足した5回を引いて実施総数を求める。

**取得済み固定GSM8Kの1問。**

- 最初の2組は各15回、第3組のみ予定より5回少ない。

## pushups_planned：予定総数

条件：3組を各15回行う予定。

根拠：

得られること：予定は45回。

既習の根拠：同数の反復。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.pushups_planned`。

## pushups_completed：実施総数

条件：第3組で予定より5回少なかった。

根拠：

得られること：45−5=40回。

既習の根拠：不足分の差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.pushups_completed`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911B.pushups_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
