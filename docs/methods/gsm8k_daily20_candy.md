# キャンディーバーの単価

飲料2本とキャンディーバー5本の合計28ドルから、キャンディーバー1本の値段を求める。

**取得済み固定GSM8Kの1問。**

- 飲料は1本4ドル、残額を5本で均等に割る。

## candy_drinks：飲料代

条件：1本4ドルの飲料を2本買う。

根拠：

得られること：飲料代は8ドル。

既習の根拠：単価と個数の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.candy_drinks`。

## candy_total：キャンディー総額

条件：総額28ドルから飲料代8ドルを引く。

根拠：

得られること：キャンディー5本は計20ドル。

既習の根拠：残額の減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.candy_total`。

## candy_price：1本の価格

条件：20ドルを5本で均等に分ける。

根拠：

得られること：答えは1本4ドル。

既習の根拠：等分除。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.candy_price`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910D.candy_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
