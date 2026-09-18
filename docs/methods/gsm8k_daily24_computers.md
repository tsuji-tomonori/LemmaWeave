# デスクトップ販売台数

全72台の半分がラップトップ、3分の1がネットブック、残りがデスクトップのとき、デスクトップ台数を求める。

**取得済み固定GSM8Kの1問。**

- 3種類を排反な販売区分として扱う。

## computers_laptops：ラップトップ

条件：全72台の半分。

根拠：

得られること：36台。

既習の根拠：2等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.computers_laptops`。

## computers_netbooks：ネットブック

条件：全72台の3分の1。

根拠：

得られること：24台。

既習の根拠：3等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.computers_netbooks`。

## computers_non_desktop：非デスクトップ合計

条件：ラップトップ36台とネットブック24台を加える。

根拠：

得られること：60台。

既習の根拠：排反部分の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.computers_non_desktop`。

## computers_desktops：デスクトップ

条件：全72台から非デスクトップ60台を除く。

根拠：

得られること：12台。

既習の根拠：全体から部分を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.computers_desktops`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911C.computers_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
