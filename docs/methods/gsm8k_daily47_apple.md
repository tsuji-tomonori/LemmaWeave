# リンゴを初めて食べる年齢

植樹から結実まで7年として初めて食べる年齢を求める。

**取得済み固定GSM8Kの1問。**

- 結実と同時に初めて食べられるとする。

## apple_wait：経過年数と残り年数

条件：4歳で植え、現在9歳、結実まで7年。

根拠：

得られること：5年経過し、結実まであと2年。

既習の根拠：年齢差と必要期間の差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917C.apple_wait`。

## apple_age：初収穫時の年齢

条件：現在9歳で、結実まであと2年。

根拠：

得られること：初めて食べるときは11歳。

既習の根拠：現在年齢への期間の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917C.apple_age`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917C.apple_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
