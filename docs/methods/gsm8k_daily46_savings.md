# 年間受取額の40%貯蓄

4種類の受取額を合計し、その40%を求める。

**取得済み固定GSM8Kの1問。**

- 問題文がearns/receivesとしているため贈与250ドルも基準額へ含める。

## savings_income：年間の受取総額

条件：芝刈り600、贈与250、ゲーム販売150、雑務150ドル。

根拠：

得られること：総額は600+250+150+150=1150ドル。

既習の根拠：同一単位の金額の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917B.savings_income`。

## savings_saved：貯蓄額

条件：1150ドルの40%を貯蓄する。

根拠：

得られること：1150×40÷100=460ドル。

既習の根拠：百分率は基準額×割合÷100。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917B.savings_saved`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917B.savings_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
