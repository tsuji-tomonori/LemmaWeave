# バラとユリの購入総額

バラ20本とその3/4本数のユリを、バラ1本5ドル・ユリはその2倍で買う総額を求める。

**取得済み固定GSM8Kの1問。**

- 本数比と単価比を別々に解き、各花の小計を加える。

## flower_lilies：ユリの本数

条件：バラは20本で、ユリはその3/4本。

根拠：

得られること：ユリは15本。

既習の根拠：4×ユリ本数＝3×バラ本数の比例式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.flower_lilies`。

## flower_rose_cost：バラ代

条件：バラ20本を1本5ドルで買う。

根拠：

得られること：バラ代は100ドル。

既習の根拠：金額＝個数×単価。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.flower_rose_cost`。

## flower_lily_price：ユリの単価

条件：バラは1本5ドルで、ユリはその2倍。

根拠：

得られること：ユリは1本10ドル。

既習の根拠：倍率による単価計算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.flower_lily_price`。

## flower_lily_cost：ユリ代

条件：ユリ15本を1本10ドルで買う。

根拠：

得られること：ユリ代は150ドル。

既習の根拠：金額＝個数×単価。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.flower_lily_cost`。

## flower_total：購入総額

条件：バラ代100ドルとユリ代150ドル。

根拠：

得られること：総額は250ドル。

既習の根拠：二つの小計の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.flower_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912A.flower_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
