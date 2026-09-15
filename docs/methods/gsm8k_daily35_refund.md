# 家具代の過払い返金額を求める

150点を1点134ドルで買う正規代金と20,700ドルとの差を求める。

**取得済み固定GSM8Kの1問。**

- 返金額は実支払額から正規代金を引いた過払い分とする。

## refund_correct_total：正規代金を求める

条件：家具150点の単価は134ドル。

根拠：

得られること：正規代金は20,100ドル。

既習の根拠：150×134を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914A.refund_correct_total`。

## refund_amount：返金額を求める

条件：20,700ドルを支払い、正規代金は20,100ドル。

根拠：

得られること：返金額は600ドル。

既習の根拠：20,700−20,100を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914A.refund_amount`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914A.refund_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
