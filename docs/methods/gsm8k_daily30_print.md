# 印刷代とペン代を合計して釣銭を求める

25頁の作文を7部、1頁0.10ドルで印刷し、1.50ドルのペンを7本買い、40ドル払った釣銭を求める。

**取得済み固定GSM8Kの1問。**

- 金額をドル単位の有理数で厳密に表す。

## print_pages：印刷頁数

条件：25頁を7部印刷する。

根拠：

得られること：175頁印刷する。

既習の根拠：頁数×部数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912D.print_pages`。

## print_cost：印刷代

条件：175頁、1頁1/10ドル。

根拠：

得られること：印刷代は35/2ドル（17.50ドル）。

既習の根拠：総額＝数量×単価。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912D.print_cost`。

## pen_cost：ペン代

条件：1本3/2ドルのペンを7本買う。

根拠：

得られること：ペン代は21/2ドル（10.50ドル）。

既習の根拠：総額＝数量×単価。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912D.pen_cost`。

## print_spent：支払総額

条件：印刷代35/2ドルとペン代21/2ドル。

根拠：

得られること：支出は28ドル。

既習の根拠：異なる購入費を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912D.print_spent`。

## print_paid：渡した金額

条件：20ドル札を2枚渡す。

根拠：

得られること：40ドル支払う。

既習の根拠：枚数×額面。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912D.print_paid`。

## print_change：釣銭

条件：40ドルを渡し、代金は28ドル。

根拠：

得られること：釣銭は12ドル。

既習の根拠：支払額＝代金＋釣銭。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912D.print_change`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912D.print_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
