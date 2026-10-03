# 5巻目の古文書の年齢

4080年の第1巻から、各巻が直前の1.5倍の年齢であるとき第5巻の年齢を求める。

**取得済み固定GSM8Kの1問。**

- 直前の年齢にその半分を加える漸化式を4回適用する。

## scroll_second：第2巻

条件：第1巻は4080年で、第2巻はその年齢に半分を加える。

根拠：

得られること：4080+2040=6120年。

既習の根拠：半分と加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.scroll_second`。

## scroll_third：第3巻

条件：第2巻は6120年。

根拠：

得られること：6120+3060=9180年。

既習の根拠：漸化式の反復。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.scroll_third`。

## scroll_fourth：第4巻

条件：第3巻は9180年。

根拠：

得られること：9180+4590=13770年。

既習の根拠：漸化式の反復。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.scroll_fourth`。

## scroll_fifth：第5巻

条件：第4巻は13770年。

根拠：

得られること：13770+6885=20655年。

既習の根拠：漸化式の反復。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.scroll_fifth`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911B.scroll_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
