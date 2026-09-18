# 排反な読書冊数区分から残り人数を求める

240人のうち、月3冊以上が1/6、2冊が35%、1冊が5/12で、残りの0冊人数を求める。

**取得済み固定GSM8Kの1問。**

- 3冊以上・2冊・1冊・0冊は排反で全生徒を尽くす。

## novels_three：3冊以上の人数

条件：全240人の1/6。

根拠：

得られること：40人。

既習の根拠：6×部分＝全体。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912D.novels_three`。

## novels_two：2冊の人数

条件：全240人の35%。

根拠：

得られること：84人。

既習の根拠：100×部分＝35×全体。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912D.novels_two`。

## novels_one：1冊の人数

条件：全240人の5/12。

根拠：

得られること：100人。

既習の根拠：12×部分＝5×全体。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912D.novels_one`。

## novels_none：0冊の人数

条件：四区分が排反で240人を尽くし、既知三群が40、84、100人。

根拠：

得られること：0冊は16人。

既習の根拠：全体＝各排反区分の人数の和。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912D.novels_none`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912D.novels_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
