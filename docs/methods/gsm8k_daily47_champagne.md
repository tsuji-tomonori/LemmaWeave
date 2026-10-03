# 浴槽を満たすシャンパン代

40ガロンを1クォート瓶で満たし20%割引後の代金を求める。

**取得済み固定GSM8Kの1問。**

- 1ガロン=4クォート、1瓶=1クォートで全量を満たす。

## champagne_gross：必要本数と定価総額

条件：40ガロン、1ガロン4クォート、1瓶1クォート、1瓶50ドル。

根拠：

得られること：160本必要で、定価総額は8000ドル。

既習の根拠：容量換算と数量×単価。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917C.champagne_gross`。

## champagne_total：割引後の支払額

条件：定価総額8000ドルから20%を割り引く。

根拠：

得られること：割引1600ドル、支払額6400ドル。

既習の根拠：百分率と差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917C.champagne_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917C.champagne_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
