# 上下段の本を復元して総数を求める

上段の3分類と、半分が推理小説で残りが西部劇5冊・伝記6冊の下段から、当初の総冊数を求める。

**取得済み固定GSM8Kの1問。**

- includingは残りの内訳が5冊と6冊で尽くされるというデータセット意図で読む。

## cart_top：上段冊数

条件：歴史12、恋愛8、詩4冊。

根拠：

得られること：上段は24冊。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.cart_top`。

## cart_nonmystery：下段の非推理小説

条件：残りは西部劇5冊と伝記6冊。

根拠：

得られること：非推理小説は11冊。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.cart_nonmystery`。

## cart_mystery：推理小説冊数

条件：推理小説が下段の半分なので残り半分と同数。

根拠：

得られること：推理小説も11冊。

既習の根拠：半分ずつの等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.cart_mystery`。

## cart_total：当初の総冊数

条件：上段24冊と下段の11冊ずつを合計する。

根拠：

得られること：46冊。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.cart_total`。

## cart_exists：条件の充足

条件：上段24、下段11+11、総数46と置く。

根拠：

得られること：全分類と半分条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.cart_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908E.cart_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
