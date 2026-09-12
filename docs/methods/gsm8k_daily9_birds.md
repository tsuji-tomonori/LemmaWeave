# 冬3か月の暦日数に応じて餌の総量を求める

12月・1月・2月に毎朝1/2カップ、毎午後1/2カップずつ鳥へ餌を与えるとき、3か月分の総量を求める。

**取得済み固定GSM8Kの1問。年指定不足を含む有効な個別解答。**

- 12月31日、1月31日。2月は平年28日または閏年29日なので総量も2通り。

## birds_daily_cup：1日分の餌

条件：朝と午後に各1/2カップ。

根拠：

得られること：1/2+1/2=1カップ/日。

既習の根拠：中学校までの分数の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.birds_daily_cup`。

## birds_regular_days：平年の暦日数

条件：2月が28日の平年。

根拠：

得られること：31+31+28=90日。

既習の根拠：暦と加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.birds_regular_days`。

## birds_regular_total：平年の総量

条件：1日1カップを90日与える。

根拠：

得られること：90カップ。

既習の根拠：中学校までの単位量×日数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.birds_regular_total`。

## birds_leap_days：閏年の暦日数

条件：2月が29日の閏年。

根拠：

得られること：31+31+29=91日。

既習の根拠：暦と加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.birds_leap_days`。

## birds_leap_total：閏年の総量

条件：1日1カップを91日与える。

根拠：

得られること：91カップ。

既習の根拠：中学校までの単位量×日数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.birds_leap_total`。

## birds_possible：可能範囲

条件：2月の日数が28日または29日。

根拠：

得られること：総量は90カップまたは91カップ。

既習の根拠：場合分け。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.birds_possible`。

## birds_ambiguity：年指定不足の反例

条件：平年と閏年のどちらも原文と両立する。

根拠：

得られること：90≠91なので一意でない。平年という追加条件なら90カップ。

既習の根拠：反例による一意性否定。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.birds_ambiguity`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908D.birds_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
