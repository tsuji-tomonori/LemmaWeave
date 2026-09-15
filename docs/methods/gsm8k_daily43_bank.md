# 4年間の貯金総額

現在までの貯金と家族の追加額に、4年間の毎月積立額を加える。

**取得済み固定GSM8Kの1問。**

- 利息や引出しは記載がないため加減せず、今日から4年間の48回を積み立てる。

## bank_current：今日の残高

条件：先週まで3000ドル、今日家族が7000ドル追加した。

根拠：

得られること：今日の残高は10000ドル。

既習の根拠：二つの金額の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915D.bank_current`。

## bank_future：将来の積立

条件：1年12か月として4年間、毎月276ドルを積み立てる。

根拠：

得られること：48か月で13248ドル積み立てる。

既習の根拠：期間の単位換算と一定額の反復加法を乗法で表す。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915D.bank_future`。

## bank_total：4年後の総額

条件：今日の10000ドルに今後の13248ドルを加える。

根拠：

得られること：4年後は23248ドル。

既習の根拠：現在額と将来積立額の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915D.bank_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915D.bank_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
