# 年間のボランティア時間

月2回、1回3時間のボランティアを1年間続ける時間を求める。

**取得済み固定GSM8Kの1問。**

- 1年を12か月として毎月同じ頻度で活動する。

## volunteer_visits：年間回数

条件：月2回を12か月続ける。

根拠：

得られること：年間の活動回数は2×12=24回。

既習の根拠：一定頻度の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.volunteer_visits`。

## volunteer_total：年間時間

条件：24回の各回が3時間。

根拠：

得られること：答えは24×3=72時間。

既習の根拠：総量=回数×1回量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.volunteer_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910E.volunteer_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
