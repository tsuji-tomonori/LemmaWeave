# 総ページ数から執筆日数を求める

1日20ページ書くJohnが400ページの本3冊を書く日数を求める。

**取得済み固定GSM8Kの1問。**

- 毎日20ページの一定速度で3冊すべてを書く。

## pages_total：総ページ数

条件：各400ページの本が3冊ある。

根拠：

得られること：総ページ数は3×400=1200ページ。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.pages_total`。

## pages_days：必要日数

条件：1200ページを1日20ページで書く。

根拠：

得られること：1200÷20=60日。

既習の根拠：中学校までの比例・除法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.pages_days`。

## pages_exists：条件の充足

条件：総量1200ページ、日数60日と置く。

根拠：

得られること：60×20=1200で全条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.pages_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908E.pages_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
