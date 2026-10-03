# 割引後の不足額

500ドルより2/5多い表示価格に15%割引を適用し、不足額を求める。

**取得済み固定GSM8Kの1問。**

- two-fifths more money than she hadを500ドルの2/5増しと読む。

## boutique_sticker：表示価格

条件：表示価格は手持ち500ドルよりその2/5だけ多い。

根拠：

得られること：表示価格は700ドル。

既習の根拠：割合増加。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917E.boutique_sticker`。

## boutique_payment：割引額と支払額

条件：700ドルから15%割り引く。

根拠：

得られること：割引105ドル、支払595ドル。

既習の根拠：百分率と差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917E.boutique_payment`。

## boutique_shortfall：不足額

条件：支払595ドルに対して手持ちは500ドル。

根拠：

得られること：95ドル不足する。

既習の根拠：差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917E.boutique_shortfall`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917E.boutique_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
