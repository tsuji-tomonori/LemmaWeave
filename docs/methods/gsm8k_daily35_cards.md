# 野球カードを収めるページ数を求める

60パック各7枚のカードを、1ページ10枚のページへ収める。

**取得済み固定GSM8Kの1問。**

- 一般にはページ数を切り上げるが、420枚は10枚で割り切れ、全ページが満杯になる。

## cards_total：カード総数を求める

条件：60パックに各7枚入っている。

根拠：

得られること：カードは420枚。

既習の根拠：60×7を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914A.cards_total`。

## cards_pages：必要ページ数を求める

条件：1ページ10枚で、420は10で割り切れる。

根拠：

得られること：42ページ必要。

既習の根拠：420÷10を計算し、余りがないことを確認する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914A.cards_pages`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914A.cards_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
