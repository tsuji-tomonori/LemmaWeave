# レッスン割引とピアノ代を合計する

500ドルのピアノと、1回40ドルを20回、総額から25%引きしたレッスンの合計費用を求める。

**取得済み固定GSM8Kの1問。**

- 25%割引はレッスン定価総額のみに適用する。

## piano_list：レッスン定価を求める

条件：1回40ドルのレッスンを20回受ける。

根拠：

得られること：定価総額は20×40=800ドル。

既習の根拠：同じ単価の総額は回数×単価。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914D.piano_list`。

## piano_lessons：25%割引後のレッスン代を求める

条件：800ドルから25%=1/4を割り引く。

根拠：

得られること：割引額は200ドル、支払うレッスン代は800-200=600ドル。

既習の根拠：25%は1/4で、割引後価格は定価から割引額を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914D.piano_lessons`。

## piano_total：すべての費用を合計する

条件：ピアノ500ドルとレッスン600ドル。

根拠：

得られること：合計は500+600=1100ドル。

既習の根拠：別々の購入費を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914D.piano_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914D.piano_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
