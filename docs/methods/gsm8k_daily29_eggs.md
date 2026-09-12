# 卵の総数と配分から男子人数を求める

3ダースの卵を大人3人には各3個、女子7人には各1個、男子には女子より1個多く配る。男子人数を求める。

**取得済み固定GSM8Kの1問。**

- 3ダースを36個へ換算し、全ての卵を記述どおり配った等式を用いる。

## eggs_total：卵の総数を換算する

条件：1ダースを12個とし、3ダースを用意した。

根拠：

得られること：卵は36個である。

既習の根拠：ダース数×12で個数へ換算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.eggs_total`。

## eggs_adults：大人に配る個数を求める

条件：大人3人が各3個受け取る。

根拠：

得られること：大人分は9個である。

既習の根拠：人数×1人当たり個数を用いる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.eggs_adults`。

## eggs_boy_each：男子1人分を求める

条件：女子1人分は1個で、男子はそれより1個多い。

根拠：

得られること：男子1人分は2個である。

既習の根拠：比較量に差1を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.eggs_boy_each`。

## eggs_boys：男子人数を求める

条件：36個を大人9個、女子7個、男子1人2個にすべて配る。

根拠：

得られること：男子は10人である。

既習の根拠：36＝9＋7＋2×男子人数という自然数方程式を解く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.eggs_boys`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912C.eggs_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
