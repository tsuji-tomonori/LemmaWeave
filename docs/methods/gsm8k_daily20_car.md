# 車代返済の月額差

6000ドルを2年で返す月額と5年で返す月額の差を求める。

**取得済み固定GSM8Kの1問。**

- 父への無利息・均等返済として原文の全額を月数で割る。

## car_fast_months：2年の月数

条件：1年12か月で2年間。

根拠：

得られること：24か月。

既習の根拠：年から月への換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.car_fast_months`。

## car_fast_monthly：2年返済の月額

条件：6000ドルを24か月で均等に返す。

根拠：

得られること：月250ドル。

既習の根拠：等分除。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.car_fast_monthly`。

## car_slow_months：5年の月数

条件：1年12か月で5年間。

根拠：

得られること：60か月。

既習の根拠：年から月への換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.car_slow_months`。

## car_slow_monthly：5年返済の月額

条件：6000ドルを60か月で均等に返す。

根拠：

得られること：月100ドル。

既習の根拠：等分除。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.car_slow_monthly`。

## car_extra：月額差

条件：250ドルから100ドルを引く。

根拠：

得られること：答えは月150ドル多い。

既習の根拠：二つの月額の差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.car_extra`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910D.car_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
