# 15分間の縄跳び合計回数

2人の速さを毎分へそろえ、15分間の合計を求める。

**取得済み固定GSM8Kの1問。**

- 2人が同じ15分間を途切れず跳ぶ。

## rope_rates：毎分の合計回数

条件：Robertoは毎時4200回、Valerieは毎分80回。

根拠：

得られること：Robertoは毎分70回、2人で毎分150回。

既習の根拠：1時間60分の単位換算と速さの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917B.rope_rates`。

## rope_total：15分間の合計

条件：2人で毎分150回を15分続ける。

根拠：

得られること：150×15=2250回。

既習の根拠：一定の速さ×時間。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917B.rope_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917B.rope_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
