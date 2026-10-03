# 同窓会パーティーの費用

50人が各100ドルを拠出し、費用が拠出合計より500ドル少ないときの費用を求める。

**取得済み固定GSM8Kの1問。**

- 全員が100ドルを支払った拠出総額と実費の差が500ドル。

## party_contributions：拠出合計

条件：50人が各100ドルを支払う。

根拠：

得られること：拠出合計は5000ドル。

既習の根拠：単価×人数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917E.party_contributions`。

## party_expenses：実際の費用

条件：費用は拠出合計より500ドル少ない。

根拠：

得られること：費用は4500ドル。

既習の根拠：差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917E.party_expenses`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917E.party_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
