# 長さと分単価が増えた映画の制作費

旧作は2時間、新作は60%長く、新作の分単価は旧作50ドルの2倍であるとき、新作全体の制作費を求める。

**取得済み固定GSM8Kの1問。**

- 参照解は192×100を1,920ドルとしているが、積は19,200ドルなので原文から再計算した値を採用する。

## film_previous_minutes：旧作の長さ

条件：旧作は2時間。

根拠：

得られること：2×60=120分。

既習の根拠：時間から分への単位換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.film_previous_minutes`。

## film_increase：新作の増加分

条件：旧作120分の60%長い。

根拠：

得られること：増加分は72分。

既習の根拠：百分率。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.film_increase`。

## film_new_minutes：新作の長さ

条件：旧作120分に増加72分を足す。

根拠：

得られること：新作は192分。

既習の根拠：基準量と増加量の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.film_new_minutes`。

## film_new_rate：新作の分単価

条件：旧作の毎分50ドルの2倍。

根拠：

得られること：新作は毎分100ドル。

既習の根拠：倍率の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.film_new_rate`。

## film_total：新作の総制作費

条件：192分を毎分100ドルで制作する。

根拠：

得られること：総額は19,200ドル。

既習の根拠：単価×時間。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.film_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910A.film_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
