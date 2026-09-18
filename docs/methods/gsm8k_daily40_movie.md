# 映画会社の利益

総興行収入、会社取り分、製作費から利益を求める。金額は百万ドル単位。

**取得済み固定GSM8Kの1問。**

- profitは会社取り分から製作費だけを引いた値とし、他費用・税は含めない。

## movie_gross：総興行収入

条件：公開週末120百万ドルの3.5倍。

根拠：

得られること：全期間の興行収入は420百万ドル。

既習の根拠：3.5倍を7/2倍として計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915A.movie_gross`。

## movie_kept：会社取り分

条件：420百万ドルの60%を会社が受け取る。

根拠：

得られること：取り分は252百万ドル。

既習の根拠：割合に基準量を掛ける。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915A.movie_kept`。

## movie_profit：利益

条件：会社取り分252百万ドルから製作費60百万ドルを引く。

根拠：

得られること：利益は192百万ドル、すなわち192,000,000ドル。

既習の根拠：利益=収入−費用。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915A.movie_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915A.movie_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
