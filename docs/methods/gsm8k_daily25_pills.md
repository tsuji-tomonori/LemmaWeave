# 鎮痛薬の残り

50錠から、期間ごとに服用した錠数を差し引く。

**取得済み固定GSM8Kの1問。**

- 半分にする対象は最初の1日量6錠と読む。

## pills_first_daily：最初の1日量

条件：1回2錠を1日3回服用する。

根拠：

得られること：1日6錠。

既習の根拠：同数の反復は乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.pills_first_daily`。

## pills_first_used：最初の2日分

条件：1日6錠を2日続ける。

根拠：

得られること：12錠を服用。

既習の根拠：日量×日数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.pills_first_used`。

## pills_next_daily：次の1日量

条件：最初の1日量6錠を半分にする。

根拠：

得られること：1日3錠。

既習の根拠：半分は2倍すると元の量になる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.pills_next_daily`。

## pills_next_used：次の3日分

条件：1日3錠を3日続ける。

根拠：

得られること：9錠を服用。

既習の根拠：日量×日数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.pills_next_used`。

## pills_used：服用総数

条件：最初の12錠、次の9錠、6日目朝の2錠を足す。

根拠：

得られること：計23錠を服用。

既習の根拠：期間別部分量の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.pills_used`。

## pills_remaining：残りの錠数

条件：瓶の50錠は服用23錠と残りの和。

根拠：

得られること：27錠残る。

既習の根拠：全体から使用量を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.pills_remaining`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911D.pills_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
