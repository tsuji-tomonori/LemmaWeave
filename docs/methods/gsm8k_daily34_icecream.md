# 2種類のアイスクリームの材料費を求める

苺味とラズベリー味を各1クォート作るためのベリーとクリームの購入費を求める。

**取得済み固定GSM8Kの1問。**

- 各味にベリー4カップを使い、クリームは2クォート分をまとめて4カップ容器1個で賄う。

## icecream_strawberry_packages：苺パック数を求める

条件：苺4カップを2カップ入りパックで買う。

根拠：

得られること：苺は2パック必要。

既習の根拠：必要量÷1パック量を用いる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.icecream_strawberry_packages`。

## icecream_raspberry_packages：ラズベリーパック数を求める

条件：ラズベリー4カップを2カップ入りパックで買う。

根拠：

得られること：ラズベリーは2パック必要。

既習の根拠：必要量÷1パック量を用いる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.icecream_raspberry_packages`。

## icecream_berry_costs：両方のベリー代を求める

条件：苺は1パック3ドル、ラズベリーは1パック5ドル。

根拠：

得られること：苺代6ドル、ラズベリー代10ドル。

既習の根拠：パック数×単価を用いる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.icecream_berry_costs`。

## icecream_cream_cost：クリーム代を求める

条件：各クォートに2カップ、計2クォートを作り、4カップ容器は4ドル。

根拠：

得られること：容器1個でクリーム代は4ドル。

既習の根拠：必要量4カップが容器1個分に一致する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.icecream_cream_cost`。

## icecream_total：総材料費を求める

条件：3種類の購入費を合計する。

根拠：

得られること：総額は20ドル。

既習の根拠：6+10+4を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.icecream_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0913C.icecream_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
