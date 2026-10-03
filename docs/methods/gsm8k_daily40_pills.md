# 1週間の服薬数

3種類の薬の1日量から1週間の総錠数を求める。

**取得済み固定GSM8Kの1問。**

- 1週間を7日、各日の服薬量を一定とする。

## pills_anticonvulsant：抗けいれん薬

条件：血圧薬3錠の2倍を毎日服用する。

根拠：

得られること：抗けいれん薬は6錠/日。

既習の根拠：2倍は2を掛ける。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915A.pills_anticonvulsant`。

## pills_daily：1日合計

条件：インスリン2錠、血圧薬3錠、抗けいれん薬6錠。

根拠：

得られること：1日11錠。

既習の根拠：異なる種類の数量を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915A.pills_daily`。

## pills_weekly：週間合計

条件：1日11錠を7日間続ける。

根拠：

得られること：1週間で77錠。

既習の根拠：同じ日量を日数倍する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915A.pills_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915A.pills_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
