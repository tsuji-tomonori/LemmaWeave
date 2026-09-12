# 増加率と単位換算から振動回数を求める

毎秒1600回から60%速い設定を5分使うときの総振動回数を求める。

**取得済み固定GSM8Kの1問。**

- 百分率は100×増加量＝60×基準量で表す。

## massage_increase：60%分を求める

条件：基準が毎秒1600回で増加率が60%。

根拠：

得られること：増加分は毎秒960回。

既習の根拠：増加量＝基準量×百分率。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.massage_increase`。

## massage_high：最高設定の速さ

条件：基準1600回へ増加分960回を加える。

根拠：

得られること：最高設定は毎秒2560回。

既習の根拠：増加後＝基準＋増加量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.massage_high`。

## massage_seconds：分を秒へ換算

条件：1分＝60秒で5分間使う。

根拠：

得られること：使用時間は300秒。

既習の根拠：秒数＝分数×60。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.massage_seconds`。

## massage_total：総振動回数

条件：毎秒2560回が300秒続く。

根拠：

得られること：総振動回数は768000回。

既習の根拠：総量＝単位時間当たり量×時間。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.massage_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912C.massage_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
