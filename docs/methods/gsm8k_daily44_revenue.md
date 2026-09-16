# 靴とシャツの売上の均等分配

靴6足を各3ドル、シャツ18枚を各2ドルで売った売上をSabとDaneで均等に分ける。

**取得済み固定GSM8Kの1問。**

- costは販売価格を指すものとして、2人が総売上を等分すると読む。

## revenue_parts：品目別売上

条件：靴6足を各3ドル、シャツ18枚を各2ドルで売る。

根拠：

得られること：靴の売上は18ドル、シャツの売上は36ドル。

既習の根拠：売上は単価×販売数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915E.revenue_parts`。

## revenue_total：総売上

条件：品目別売上が18ドルと36ドル。

根拠：

得られること：総売上は18+36=54ドル。

既習の根拠：品目別売上の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915E.revenue_total`。

## revenue_each：1人当たりの取り分

条件：総売上54ドルを2人で均等に分ける。

根拠：

得られること：1人当たり54÷2=27ドル。

既習の根拠：均等分配は総量を人数で割る。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915E.revenue_each`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915E.revenue_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
