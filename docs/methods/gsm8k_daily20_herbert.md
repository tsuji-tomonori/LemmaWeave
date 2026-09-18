# Herbertの来年の年齢

24歳のKrisより10歳若いHerbertの来年の年齢を求める。

**取得済み固定GSM8Kの1問。**

- 現在の年齢を求めてから1年進める。

## herbert_now：現在の年齢

条件：Krisの24歳から年齢差10歳を引く。

根拠：

得られること：Herbertは現在14歳。

既習の根拠：年齢差の減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.herbert_now`。

## herbert_next：来年の年齢

条件：現在14歳から1年後。

根拠：

得られること：答えは15歳。

既習の根拠：経過年数の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.herbert_next`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910D.herbert_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
