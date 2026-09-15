# クラッカーの夜数と指示語の曖昧さ

5箱のクラッカーが何晩分かを求める。『5 of these crackers』の指示対象を分けて扱う。

**取得済み固定GSM8Kの1問。**

- 原文のthese crackersは、クラッカーサンド5個ともクラッカー5枚とも読めるため両方を形式化する。

## crackers_sandwich：サンドイッチ解釈

条件：毎晩5個のサンドイッチを食べ、1個に2枚使うと解釈する。5箱には5×4×28=560枚ある。

根拠：

得られること：毎晩10枚なので56晩分。

既習の根拠：総数を1晩の消費枚数で割る。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915A.crackers_sandwich`。

## crackers_literal：クラッカー解釈

条件：these crackersを文字どおり毎晩5枚と解釈する。総数は同じく560枚。

根拠：

得られること：毎晩5枚なので112晩分。

既習の根拠：総数を1晩の消費枚数で割る。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915A.crackers_literal`。

## crackers_ambiguity：非一意性

条件：二つの読みがともに数量条件と両立し、56と112は異なる。

根拠：

得られること：原文だけでは一意でない。参考解答の56はサンドイッチ5個という追加解釈の下で成立する。

既習の根拠：異なる具体例を示して一意性を否定する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915A.crackers_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915A.crackers_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
