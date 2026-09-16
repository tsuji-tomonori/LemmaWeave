# 所属別招待人数と追加20%

故郷5人、学校はその2倍、スポーツクラブは前二者の合計、その他はこの3群合計の20%として総招待人数を求める。

**取得済み固定GSM8Kの1問。**

- remaining invitationsの20%の基準は、直前までに挙げた故郷・学校・クラブの合計30人と読む。

## party_base：主要3群の人数

条件：故郷5人、学校は2倍、クラブは故郷と学校の合計。

根拠：

得られること：学校10人、クラブ15人、主要3群は計30人。

既習の根拠：倍数と部分和を順に計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915E.party_base`。

## party_other：その他の招待

条件：その他は主要3群30人の20%。

根拠：

得られること：その他は30×20÷100=6人。

既習の根拠：百分率に対応する部分量を求める。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915E.party_other`。

## party_total：総招待人数

条件：主要3群30人にその他6人を加える。

根拠：

得られること：来る可能性のある人数は36人。

既習の根拠：重複しない群の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915E.party_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915E.party_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
