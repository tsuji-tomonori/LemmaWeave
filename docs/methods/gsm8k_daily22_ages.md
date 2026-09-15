# 将来のAnneの年齢

同じ将来時点でMaudeが8歳、Emileが6倍、AnneがEmileの2倍のときAnneの年齢を求める。

**取得済み固定GSM8Kの1問。**

- 三人の年齢関係はすべて同じ将来時点のものと読む。

## ages_emile：Emileの年齢

条件：Maudeが8歳で、Emileはその6倍である。

根拠：

得られること：Emileは6×8=48歳。

既習の根拠：倍の関係。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.ages_emile`。

## ages_anne：Anneの年齢

条件：AnneはEmileの2倍の年齢である。

根拠：

得られること：答えは2×48=96歳。

既習の根拠：倍の関係。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.ages_anne`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911A.ages_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
