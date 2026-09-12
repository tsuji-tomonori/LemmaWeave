# 2人の読書日数の平均

EmeryがSerenaの5倍の速さで読むとき、曖昧な代名詞herの指示別に平均日数を求める。

**取得済み固定GSM8Kの1問。**

- her=Emeryなら平均60日、her=Serenaなら平均12日であり、原文だけでは一意でない。

## reading_emery_serena：her=EmeryのSerena日数

条件：速いEmeryが20日、Serenaはその5倍の日数を要する。

根拠：

得られること：Serenaは100日。

既習の根拠：同じ仕事量で速さと時間は反比例。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.reading_emery_serena`。

## reading_emery_average：her=Emeryの平均

条件：日数20と100の算術平均を取る。

根拠：

得られること：平均60日。

既習の根拠：2数の算術平均。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.reading_emery_average`。

## reading_serena_emery：her=SerenaのEmery日数

条件：遅いSerenaが20日、Emeryは5倍速い。

根拠：

得られること：Emeryは4日。

既習の根拠：同じ仕事量で速さと時間は反比例。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.reading_serena_emery`。

## reading_serena_average：her=Serenaの平均

条件：日数4と20の算術平均を取る。

根拠：

得られること：平均12日。よって原文のみでは60日に一意決定しない。

既習の根拠：2数の算術平均と反例。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.reading_serena_average`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911B.reading_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
