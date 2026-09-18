# 配った後のペンと鉛筆

同数のペンと鉛筆を各60本持ち、7人へ1人当たりペン8本・鉛筆6本を配った後の合計を求める。

**取得済み固定GSM8Kの1問。**

- ペンが60本で鉛筆も同数なので、鉛筆の初期本数も60本とする。

## stationery_given：配った本数

条件：7人それぞれへペン8本、鉛筆6本を配る。

根拠：

得られること：配ったのはペン8×7=56本、鉛筆6×7=42本。

既習の根拠：同数ずつ配る総数は人数×1人分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915E.stationery_given`。

## stationery_left：種類別の残り

条件：初めに各60本あり、ペン56本と鉛筆42本を配った。

根拠：

得られること：ペンは4本、鉛筆は18本残る。

既習の根拠：初期量から配布量を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915E.stationery_left`。

## stationery_total：残った文具の合計

条件：ペン4本と鉛筆18本が残る。

根拠：

得られること：残りは合計4+18=22本。

既習の根拠：異なる種類の個数を合計する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915E.stationery_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915E.stationery_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
