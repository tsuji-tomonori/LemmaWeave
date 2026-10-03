# 手元に残すケーブル

1000フィートを25フィート区間に分け、4分の1を譲り、残りの半分を保管した後の手元分を求める。

**取得済み固定GSM8Kの1問。**

- 参照解と同様に区間個数を答え、単位を明確にするため対応する375フィートも示す。

## cable_sections：区間数

条件：1000フィートを25フィートずつに分割する。

根拠：

得られること：40区間。

既習の根拠：等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.cable_sections`。

## cable_given：譲る区間

条件：40区間の4分の1を友人へ譲る。

根拠：

得られること：10区間。

既習の根拠：分数倍。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.cable_given`。

## cable_remaining：譲渡後

条件：40区間から10区間を除く。

根拠：

得られること：30区間残る。

既習の根拠：差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.cable_remaining`。

## cable_on_hand：手元の区間数

条件：残り30区間の半分を保管し、もう半分を手元に置く。

根拠：

得られること：手元は15区間。

既習の根拠：半分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.cable_on_hand`。

## cable_on_hand_feet：手元の長さ

条件：1区間は25フィート。

根拠：

得られること：15区間は375フィート。

既習の根拠：単位付き換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.cable_on_hand_feet`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911B.cable_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
