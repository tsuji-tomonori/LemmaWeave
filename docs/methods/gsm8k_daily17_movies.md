# 2日間に見た長編映画数

1本90分の映画を火曜に4時間30分見て、水曜に火曜の2倍の本数を見たとき、2日間の最大本数を求める。

**取得済み固定GSM8Kの1問。**

- full-length movieだけを数え、火曜の270分は90分映画3本でちょうど尽くされる。

## movies_minutes：火曜の視聴分数

条件：4時間30分を分に直す。

根拠：

得られること：4×60+30=270分。

既習の根拠：時間から分への単位換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.movies_minutes`。

## movies_tuesday：火曜の映画本数

条件：1本90分で合計270分、全編を見た映画だけを数える。

根拠：

得られること：火曜は3本。

既習の根拠：総時間÷1本の時間。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.movies_tuesday`。

## movies_wednesday：水曜の映画本数

条件：水曜は火曜3本の2倍。

根拠：

得られること：水曜は6本。

既習の根拠：倍率の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.movies_wednesday`。

## movies_total：2日間の最大本数

条件：火曜3本と水曜6本。

根拠：

得られること：合計9本。

既習の根拠：日別本数の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.movies_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910A.movies_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
