# クモの群れの脚の総数

1匹の脚8本の半数より10多い匹数のクモについて、脚の総数を求める。

**取得済み固定GSM8Kの1問。**

- 原文は脚の本数8の半分という数4を、匹数を作る数値として用いている。

## spiders_count：クモの匹数

条件：1匹の8本の脚の半数を数4として、その数より10匹多い。

根拠：

得られること：半数は8÷2=4で、群れは4+10=14匹。

既習の根拠：半分を求める除法と追加の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917A.spiders_count`。

## spiders_total：脚の総数

条件：クモは14匹で、各クモに脚が8本ある。

根拠：

得られること：脚は全部で14×8=112本。

既習の根拠：1匹当たり本数と匹数の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917A.spiders_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917A.spiders_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
